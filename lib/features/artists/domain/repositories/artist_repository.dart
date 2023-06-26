import 'dart:io';

import '../../../../core/entities/artist_entity/artist_entity.dart';

abstract class ArtistRepository {
  Future<bool> addArtist(ArtistEntity artist, File image);
  Future<List<ArtistEntity>> getArtists();
  Future<ArtistEntity> getArtist(String id);
}
