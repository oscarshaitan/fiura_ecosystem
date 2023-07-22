import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/post_entity/post_entity.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/post_repository.dart';

class PostRepositoryImp extends PostRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;

  //Collections
  final String posts = "posts";

  PostRepositoryImp({
    required this.db,
    required this.auth,
    required this.imageRepository,
  });

  @override
  Future<bool> addPost(PostEntity post, File image) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      docRef = await db.collection(posts).add({
        "redirectionUrl": post.redirectionUrl,
        "urlPhoto": post.urlPhoto,
        "description": post.description,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      final String? urlPhoto =
          await imageRepository.saveImage(image, post.urlPhoto);

      if (result.data() != null && urlPhoto != null) {
        var id = result.id;
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

  @override
  Future<List<PostEntity>> getPosts() async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<PostEntity> postsList = [];

    if (user != null) {
      collectionRef = db.collection(posts);
      querySnapshot = await collectionRef.get();

      for (QueryDocumentSnapshot element in querySnapshot.docs) {
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;

        PostEntity post = PostEntity.fromJson(data);

        postsList.add(post);
      }
    }

    return postsList;
  }
}
