import 'dart:io';
import 'package:fiura/features/images/presentation/cubit/image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/image_repository.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit(this._imageRepository) : super(const Initial());

  final ImageRepository _imageRepository;

  void imagePicker() async {
    Map<String, dynamic> result;

    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      result = {
        'image': image,
        'isImageSelected': true,
        'showErrorMessage': false,
      };
      emit(PickedImage(result));
    }
  }
}
