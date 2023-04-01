import '../../../../core/entities/judge_entity/judge_entity.dart';

abstract class JudgeRepository {
  Future<bool> addJudge(JudgeEntity judge);
}
