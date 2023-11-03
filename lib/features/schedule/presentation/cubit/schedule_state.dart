import 'dart:io';

import 'package:fiura/core/entities/schedule_entity/schedule_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_state.freezed.dart';

@freezed
abstract class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = Initial;
  const factory ScheduleState.loading() = Loading;
  const factory ScheduleState.error(String message) = Error;
  const factory ScheduleState.success() = Success;
  const factory ScheduleState.loadData(List<ScheduleEntity> posts) = LoadData;
  const factory ScheduleState.pickedImage(File image) = PickedImage;
}
