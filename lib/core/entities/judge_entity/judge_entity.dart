import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'judge_entity.freezed.dart';
part 'judge_entity.g.dart';

@freezed
class JudgeEntity with _$JudgeEntity {
  factory JudgeEntity({
    @Default('')String id,
    @Default('')String name,
    @Default('')String about,
    @Default('')String? socialNetwork,
}) = _JudgeEntity;

  factory JudgeEntity.fromJson(Map<String, dynamic> json) =>
      _$JudgeEntityFromJson(json);
}
