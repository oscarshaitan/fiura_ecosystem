import 'dart:io';

import 'package:fiura/core/entities/musician_entity/musician_entity.dart';

abstract class MusicianRepository {
  Future<bool> addMusician(MusicianEntity2 musician, File image);
  Future<List<MusicianEntity2>> getMusicians(MusicianType type);
  Future<MusicianEntity2> getMusician(String id, MusicianType type);
  Future<void> deleteMusician(String id, MusicianType type);
  Future<void> updateMusician(
      MusicianEntity2 musician, File? image, String previousPhotoName);
}
