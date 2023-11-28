import 'dart:io';

import 'package:fiura/core/entities/artist_entity/artist_entity.dart';

abstract class ArtistRepository {
  Future<bool> addArtist(ArtistEntity2 artist, File image);
  Future<List<ArtistEntity2>> getArtists();
  Future<ArtistEntity2> getArtist(String id);
  Future<void> deleteArtist(String id);
  Future<void> updateArtist(
      ArtistEntity2 artist, File? image, String previousPhotoName);
}
