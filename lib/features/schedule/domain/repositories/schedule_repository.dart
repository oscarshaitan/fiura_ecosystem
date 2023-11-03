import 'dart:io';
import 'package:fiura/core/entities/schedule_entity/schedule_entity.dart';

abstract class ScheduleRepository {
  Future<bool> addSchedule(ScheduleEntity post, File image);

  Future<List<ScheduleEntity>> getSchedules();

  Future<void> deleteSchedule(String id);
}
