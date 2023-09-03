import 'dart:io';

abstract class ImageRepository {
  Future<String?> saveImage(File image, String urlPhoto);
  Future<File?> imagePicker();
  Future<void> deleteImage(String imageName);
}
