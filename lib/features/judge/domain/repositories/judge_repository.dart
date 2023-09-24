import 'dart:io';
import '../../../../core/entities/judge_entity/judge_entity.dart';

abstract class JudgeRepository {
  Future<bool> addJudge(JudgeEntity judge, File image);
  Future<JudgeEntity> getJudge(String id);
  Future<List<JudgeEntity>> getJudges();
  Future<void> deleteJudge(String id);
  Future<void> updateJudge(
      JudgeEntity judge, File? image, String previousPhotoName);
}
