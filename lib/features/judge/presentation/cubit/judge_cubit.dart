import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura_ecosystem/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../images/domain/repositories/image_repository.dart';

class JudgeCubit extends Cubit<JudgeState> {
  JudgeCubit(this._judgeRepository, this._imageRepository)
      : super(const Initial());

  final JudgeRepository _judgeRepository;
  final ImageRepository _imageRepository;

  void addJudge(String name, String about, List<String> socialNetwork,
      File? image) async {
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
}
