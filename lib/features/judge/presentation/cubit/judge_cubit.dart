import 'dart:io';

import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../images/domain/repositories/image_repository.dart';

class JudgeCubit extends Cubit<JudgeState> {
  JudgeCubit(this._judgeRepository, this._imageRepository) : super(const Initial());

  final JudgeRepository _judgeRepository;
  final ImageRepository _imageRepository;

  void updateJudge(String id, String name, String about, List<String> socialNetwork, File? image, String previousPhotoName) async {
    emit(const Loading());

    final String urlPhoto = 'Artists/${path.basename(image!.path)}';

    final JudgeEntity judge = JudgeEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: id,
      urlPhoto: urlPhoto,
    );

    try {
      await _judgeRepository.updateJudge(judge, image, previousPhotoName);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void addJudge(String name, String about, List<String> socialNetwork, File? image) async {
    String urlPhoto = 'Judges/${path.basename(image!.path)}';

    JudgeEntity judge = JudgeEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      urlPhoto: urlPhoto,
      id: '',
    );

    emit(const Loading());
    final result = await _judgeRepository.addJudge(judge, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo juez'));
    }
  }

  void getJudge(String judgeId) async {
    emit(const Loading());

    try {
      final result = await _judgeRepository.getJudge(judgeId);
      emit(LoadJudge(result));
    } catch (e) {
      emit(Error('Error cargando artista: ${e.toString()}'));
    }
  }

  void getJudges() async {
    emit(const Loading());

    try {
      final result = await _judgeRepository.getJudges();
      emit(LoadData(result));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void imagePicker() async {
    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      emit(PickedImage(image));
    }
  }

  void setUrlToFile(String urlPhoto) async {
    //Get my image name
    String imageName = "defaultPhotoName";
    Uri uri = Uri.parse(urlPhoto);
    String path = uri.path;

    int startIndex = path.indexOf("Artists%2F");

    if (startIndex != -1) {
      imageName = path.substring(startIndex + "Artists%2F".length);
    }

    try {
      final response = await http.get(Uri.parse(urlPhoto));
      final bytes = response.bodyBytes;
      final appDir = await getApplicationDocumentsDirectory();
      File imageFile = File("${appDir.path}/$imageName");
      await imageFile.writeAsBytes(bytes);
      emit(ChargedImage(imageFile, imageName));
    } catch (e) {
      emit(const Error("Ocurrió un error al cargar la foto del artista"));
    }
  }

  void deleteJudge(String id) async {
    emit(const Loading());
    try {
      await _judgeRepository.deleteJudge(id);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
