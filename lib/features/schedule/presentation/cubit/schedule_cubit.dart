import 'dart:io';
import 'package:fiura/features/schedule/presentation/cubit/schedule_state.dart';
import 'package:path/path.dart' as path;
import 'package:fiura/core/entities/schedule_entity/schedule_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/schedule_repository.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit(this._scheduleRepository, this._imageRepository) : super(const Initial());

  final ScheduleRepository _scheduleRepository;
  final ImageRepository _imageRepository;

  void addSchedule(File? image) async {
    String urlPhoto = 'Schedules/${path.basename(image!.path)}';

    ScheduleEntity schedule = ScheduleEntity(
      id: '',
      urlPhoto: urlPhoto,
      creationDate: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    emit(const Loading());
    final result = await _scheduleRepository.addSchedule(schedule, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo horario'));
    }
  }

  void getSchedules() async {
    emit(const Loading());
    try {
      final result = await _scheduleRepository.getSchedules();
      emit(LoadData(result));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void deleteSchedule(String id) async {
    emit(const Loading());
    try {
      await _scheduleRepository.deleteSchedule(id);
      getSchedules();
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void imagePicker() async {
    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      emit(PickedImage(image));
    }
  }
}
