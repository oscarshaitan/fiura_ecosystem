import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/entities/artist_entity/artist_entity.dart';
import '../../domain/repositories/artist_repository.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit(this._artistRepository) : super(const Initial());

  final ArtistRepository _artistRepository;

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
}
