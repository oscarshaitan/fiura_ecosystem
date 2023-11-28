import 'dart:io';
import 'package:fiura/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/features/artists/domain/repositories/artist_repository.dart';
import 'package:fiura/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura/features/musician/domain/repositories/musician_repository.dart';
import 'package:fiura/core/entities/musician_entity/musician_entity.dart';

class MusicianRepositoryImp extends MusicianRepository {
  final ArtistRepository artistRepository;
  final JudgeRepository judgeRepository;

  MusicianRepositoryImp(
      {required this.artistRepository, required this.judgeRepository});

  @override
  Future<bool> addMusician(MusicianEntity2 musician, File image) async {
    if (musician.type == MusicianType.artist) {
      return await artistRepository.addArtist(
          ArtistEntity2.fromMusicianEntity(musician), image);
    } else {
      return await judgeRepository.addJudge(
          JudgeEntity2.fromMusicianEntity(musician), image);
    }
  }

  @override
  Future<List<MusicianEntity2>> getMusicians(MusicianType type) async {
    if (type == MusicianType.artist) {
      return (await artistRepository.getArtists()).cast<MusicianEntity2>();
    } else {
      return (await judgeRepository.getJudges()).cast<MusicianEntity2>();
    }
  }

  @override
  Future<MusicianEntity2> getMusician(String id, MusicianType type) async {
    if (type == MusicianType.artist) {
      return (await artistRepository.getArtist(id)) as MusicianEntity2;
    } else {
      return (await judgeRepository.getJudge(id)) as MusicianEntity2;
    }
  }

  @override
  Future<void> deleteMusician(String id, MusicianType type) async {
    if (type == MusicianType.artist) {
      return await artistRepository.deleteArtist(id);
    } else {
      return await judgeRepository.deleteJudge(id);
    }
  }

  @override
  Future<void> updateMusician(
      MusicianEntity2 musician, File? image, String previousPhotoName) async {
    if (musician.type == MusicianType.artist) {
      return await artistRepository.updateArtist(
          ArtistEntity2.fromMusicianEntity(musician), image, previousPhotoName);
    } else {
      return await judgeRepository.updateJudge(
          JudgeEntity2.fromMusicianEntity(musician), image, previousPhotoName);
    }
  }
}
