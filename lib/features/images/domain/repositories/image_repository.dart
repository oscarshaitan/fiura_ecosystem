import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class ImageRepository {
  Future<String?> saveImage(File image, Reference imageRef) async {
    late TaskSnapshot taskSnapshot;

    //Upload image to firebase storage
    taskSnapshot = await imageRef.putFile(image);

    if (taskSnapshot.state == TaskState.success) {
      var urlPhoto = await imageRef.getDownloadURL();
      return urlPhoto;
    } else {
      return null;
    }
  }
}
