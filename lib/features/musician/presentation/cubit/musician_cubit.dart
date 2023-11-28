import 'dart:io';
import 'package:fiura/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/musician/domain/repositories/musician_repository.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_state.dart';
import 'package:path/path.dart' as path;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import '../../../images/domain/repositories/image_repository.dart';
import 'package:http/http.dart' as http;

class MusicianCubit extends Cubit<MusicianState> {
  MusicianCubit(this._musicianRepository, this._imageRepository)
      : super(const Initial());

  final MusicianRepository _musicianRepository;
  final ImageRepository _imageRepository;

  void addMusician(String name, String about, List<String> socialNetwork,
      File? image, MusicianType musicianType) async {
    late MusicianEntity2 musician;

    if (musicianType == MusicianType.artist) {
      final String urlPhoto = 'Artists/${path.basename(image!.path)}';
      musician = ArtistEntity2(
        name: name,
        about: about,
        socialNetwork: socialNetwork,
        id: '',
        urlPhoto: urlPhoto,
      ) as MusicianEntity2;
    } else {
      final String urlPhoto = 'Judges/${path.basename(image!.path)}';
      musician = ArtistEntity2(
        name: name,
        about: about,
        socialNetwork: socialNetwork,
        id: '',
        urlPhoto: urlPhoto,
      ) as MusicianEntity2;
    }

    emit(const Loading());
    final result = await _musicianRepository.addMusician(musician, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo artista'));
    }
  }

  void getMusicians(MusicianType musicianType) async {
    emit(const Loading());

    try {
      final result = await _musicianRepository.getMusicians(musicianType);
      emit(LoadMusicianList(result));
    } catch (e) {
      emit(Error('Error cargando artistas: ${e.toString()}'));
    }
  }

  void getMusician(String musicianId, MusicianType musicianType) async {
    emit(const Loading());

    try {
      final result =
          await _musicianRepository.getMusician(musicianId, musicianType);
      emit(LoadMusician(result));
    } catch (e) {
      emit(Error('Error cargando artista: ${e.toString()}'));
    }
  }

  void imagePicker() async {
    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      emit(PickedImage(image));
    }
  }

  void deleteMusician(String id, MusicianType musicianType) async {
    emit(const Loading());
    try {
      await _musicianRepository.deleteMusician(id, musicianType);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void updateMusician(
      String id,
      String name,
      String about,
      List<String> socialNetwork,
      File? image,
      String previousPhotoName,
      MusicianType musicianType) async {
    emit(const Loading());

    late MusicianEntity2 musician;

    if (musicianType == MusicianType.artist) {
      final String urlPhoto = 'Artists/${path.basename(image!.path)}';

      musician = ArtistEntity2(
        name: name,
        about: about,
        socialNetwork: socialNetwork,
        id: id,
        urlPhoto: urlPhoto,
      ) as MusicianEntity2;
    } else {
      final String urlPhoto = 'Judges/${path.basename(image!.path)}';

      musician = JudgeEntity2(
        name: name,
        about: about,
        socialNetwork: socialNetwork,
        id: id,
        urlPhoto: urlPhoto,
      ) as MusicianEntity2;
    }

    try {
      await _musicianRepository.updateMusician(
          musician, image, previousPhotoName);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void setUrlToFile(String urlPhoto, MusicianType musicianType) async {
    //Get my image name
    late String imageName;
    Uri uri = Uri.parse(urlPhoto);
    String path = uri.path;
    late int startIndex;
    late String urlIdentifier;

    if (musicianType == MusicianType.artist) {
      urlIdentifier = "Artists%2F";
    } else {
      urlIdentifier = "Judges%2F";
    }

    startIndex = path.indexOf(urlIdentifier);

    if (startIndex != -1) {
      imageName = path.substring(startIndex + urlIdentifier.length);
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
}
