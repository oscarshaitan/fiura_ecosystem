import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura_ecosystem/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JudgeCubit extends Cubit<JudgeState> {
  JudgeCubit(this._judgeRepository) : super(const Initial());

  final JudgeRepository _judgeRepository;

  void addJudge(String name, String about, List<String> socialNetwork) async {
    JudgeEntity judge = JudgeEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: '',
    );

    emit(const Loading());
    final result = await _judgeRepository.addJudge(judge);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo juez'));
    }
  }
}
