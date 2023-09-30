import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../musician_entity/musician_entity.dart';
part 'judge_entity.freezed.dart';

@freezed
class JudgeEntity with _$JudgeEntity {
  factory JudgeEntity({
    required MusicianEntity musician,
  }) = _JudgeEntity;
}
