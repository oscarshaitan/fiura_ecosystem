import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fiura_ecosystem/features/images/domain/repositories/image_repository.dart';
import 'package:image_picker/image_picker.dart';

class ImageRepositoryImp extends ImageRepository {
  final Reference storageRef;
  // Image Picker
  final ImagePicker picker;

  ImageRepositoryImp({required this.storageRef, required this.picker});

  @override
  Future<String?> saveImage(File image, String urlPhoto) async {
    late TaskSnapshot taskSnapshot;

    final imageRef = storageRef.child(urlPhoto);

    //Upload image to firebase storage
    taskSnapshot = await imageRef.putFile(image);

    if (taskSnapshot.state == TaskState.success) {
      var urlPhoto = await imageRef.getDownloadURL();
      return urlPhoto;
    } else {
      return null;
    }
  }

  @override
  Future<File?> imagePicker() async {
    File? image;

    final XFile? result = await picker.pickImage(source: ImageSource.gallery);

    if (result != null) {
      image = File(result.path);
    }

    return image;
  }
}
