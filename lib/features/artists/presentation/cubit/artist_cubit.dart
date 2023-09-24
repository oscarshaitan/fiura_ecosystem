import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura/features/artists/presentation/cubit/artist_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/entities/artist_entity/artist_entity.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/artist_repository.dart';
import 'package:http/http.dart' as http;

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit(this._artistRepository, this._imageRepository)
      : super(const Initial());

  final ArtistRepository _artistRepository;
  final ImageRepository _imageRepository;

  void addArtist(String name, String about, List<String> socialNetwork,
      File? image) async {
    final String urlPhoto = 'Artists/${path.basename(image!.path)}';

    ArtistEntity artist = ArtistEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: '',
      urlPhoto: urlPhoto,
    );

    emit(const Loading());
    final result = await _artistRepository.addArtist(artist, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo artista'));
    }
  }

  void getArtists() async {
    emit(const Loading());

    try {
      final result = await _artistRepository.getArtists();
      emit(LoadData(result));
    } catch (e) {
      emit(Error('Error cargando artistas: ${e.toString()}'));
    }
  }

  void getArtist(String artistId) async {
    emit(const Loading());

    try {
      final result = await _artistRepository.getArtist(artistId);
      emit(LoadArtist(result));
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

  void deleteArtist(String id) async {
    emit(const Loading());
    try {
      await _artistRepository.deleteArtist(id);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void updateArtist(String id, String name, String about,
      List<String> socialNetwork, File? image, String previousPhotoName) async {
    emit(const Loading());

    final String urlPhoto = 'Artists/${path.basename(image!.path)}';

    final ArtistEntity artist = ArtistEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: id,
      urlPhoto: urlPhoto,
    );

    try {
      await _artistRepository.updateArtist(artist, image, previousPhotoName);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
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
}
