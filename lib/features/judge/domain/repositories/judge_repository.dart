import 'dart:io';
import 'package:fiura/core/entities/judge_entity/judge_entity.dart';

abstract class JudgeRepository {
  Future<bool> addJudge(JudgeEntity2 judge, File image);
  Future<JudgeEntity2> getJudge(String id);
  Future<List<JudgeEntity2>> getJudges();
  Future<void> deleteJudge(String id);
  Future<void> updateJudge(
      JudgeEntity2 judge, File? image, String previousPhotoName);
}
