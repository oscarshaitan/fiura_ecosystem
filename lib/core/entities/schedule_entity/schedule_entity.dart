import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_entity.freezed.dart';
part 'schedule_entity.g.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  factory ScheduleEntity({
    required String id,
    required String urlPhoto,
    required String creationDate,
  }) = _ScheduleEntity;

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) => _$ScheduleEntityFromJson(json);
}
