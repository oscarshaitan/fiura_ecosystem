import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'judge_entity.freezed.dart';
part 'judge_entity.g.dart';

@freezed
class JudgeEntity with _$JudgeEntity {
  factory JudgeEntity({
    required String id,
    required String name,
    required String about,
    required List<String?> socialNetwork,
}) = _JudgeEntity;

  factory JudgeEntity.fromJson(Map<String, dynamic> json) =>
      _$JudgeEntityFromJson(json);
}
