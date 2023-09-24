import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/judge_entity/judge_entity.dart';
part 'judge_state.freezed.dart';

@freezed
abstract class JudgeState with _$JudgeState {
  const factory JudgeState.initial() = Initial;
  const factory JudgeState.loading() = Loading;
  const factory JudgeState.error(String message) = Error;
  const factory JudgeState.success() = Success;
  const factory JudgeState.loadData(List<JudgeEntity> judges) = LoadData;
  const factory JudgeState.loadJudge(JudgeEntity judge) = LoadJudge;
  const factory JudgeState.pickedImage(File image) = PickedImage;
  const factory JudgeState.chargedImage(File image, String name) = ChargedImage;
}
