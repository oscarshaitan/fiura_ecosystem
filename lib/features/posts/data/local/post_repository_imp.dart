import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fiura_ecosystem/core/entities/post_entity/post_entity.dart';
import '../../domain/repositories/post_repository.dart';

class PostRepositoryImp extends PostRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final Reference storageRef;

  //Collections
  final String posts = "posts";

  PostRepositoryImp({
    required this.db,
    required this.auth,
    required this.storageRef,
  });

  @override
  Future<bool> addPost(PostEntity post, File image, String imagePath) async {
    final User? user = auth.currentUser;
    final imageRef = storageRef.child(imagePath);
    late DocumentReference docRef;
    late TaskSnapshot taskSnapshot;
    late bool status;

    if (user != null) {
      docRef = await db.collection(posts).add({
        "redirectionUrl": post.redirectionUrl,
        "description": post.description,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      taskSnapshot = await imageRef.putFile(image);

      if (result.data() != null && taskSnapshot.state == TaskState.success) {
        var id = result.id;
        var urlPhoto = await imageRef.getDownloadURL();
        await db
            .collection(posts)
            .doc(id)
            .update({"id": id, "urlPhoto": urlPhoto});
        status = true;
      } else {
        status = false;
      }
    }

    return status;
  }
}
