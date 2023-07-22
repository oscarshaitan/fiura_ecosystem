import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_state.freezed.dart';

@freezed
abstract class ImageState with _$ImageState {
  const factory ImageState.initial() = Initial;
  const factory ImageState.loading() = Loading;
  const factory ImageState.error(String message) = Error;
  const factory ImageState.pickedImage(Map<String, dynamic> result) =
      PickedImage;
}
