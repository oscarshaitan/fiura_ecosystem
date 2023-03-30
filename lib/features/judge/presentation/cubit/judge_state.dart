import 'package:freezed_annotation/freezed_annotation.dart';
part 'judge_state.freezed.dart';

@freezed
abstract class JudgeState with _$JudgeState {
  const factory JudgeState.initial() = Initial;
  const factory JudgeState.loading() = Loading;
  const factory JudgeState.error(String message) = Error;
  const factory JudgeState.success() = Success;
}
