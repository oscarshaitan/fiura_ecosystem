import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/core/entities/user/user_entity.dart';
import 'package:fiura/features/home/repository/user_respository.dart';
import 'package:fiura/features/images/domain/repositories/image_repository.dart';
import '../../../../core/entities/musician_entity/musician_entity.dart';
import '../../domain/repositories/judge_repository.dart';

class JudgeRepositoryImp extends JudgeRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;
  final UserRepository userRepository;

  //Collections
  final String judges = "judges";

  JudgeRepositoryImp(
      {required this.db,
      required this.auth,
      required this.imageRepository,
      required this.userRepository});

  @override
  Future<bool> addJudge(JudgeEntity judge, File image) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      docRef = await db.collection(judges).add({
        "name": judge.musician.name,
        "about": judge.musician.about,
        "socialNetwork": judge.musician.socialNetwork,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      final String? urlPhoto =
          await imageRepository.saveImage(image, judge.musician.urlPhoto);

      if (result.data() != null && urlPhoto != null) {
        var id = result.id;
        await db
            .collection(judges)
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
  Future<List<JudgeEntity>> getJudges() async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<JudgeEntity> judgesList = [];

    if (user != null) {
      collectionRef = db.collection(judges);
      querySnapshot = await collectionRef.get();

      for (var element in querySnapshot.docs) {
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;

        MusicianEntity musician = MusicianEntity.fromJson(data);

        JudgeEntity judge = JudgeEntity(musician: musician);

        judgesList.add(judge);
      }
    }

    return judgesList;
  }

  @override
  Future<JudgeEntity> getJudge(String id) async {
    late MusicianEntity musician;
    late JudgeEntity judge;
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final DocumentSnapshot documentSnapshot;

    if (user != null) {
      collectionRef = db.collection(judges);
      documentSnapshot = await collectionRef.doc(id).get();

      musician = MusicianEntity.fromJson(
          documentSnapshot.data() as Map<String, dynamic>);

      judge = JudgeEntity(musician: musician);
    }

    return judge;
  }

  @override
  Future<void> updateJudge(
      JudgeEntity judge, File? image, String previousPhotoName) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();
    late DocumentReference docRef;

    if (user != null) {
      if (currentUser.admin == true) {
        docRef = db.collection(judges).doc(judge.musician.id);

        try {
          //Delete previous photo
          await imageRepository.deleteImage(previousPhotoName);

          //Add new artist photo
          final String? urlPhoto =
              await imageRepository.saveImage(image!, judge.musician.urlPhoto);

          Map<String, dynamic> itemToUpdate = judge.musician.toJson();

          itemToUpdate["urlPhoto"] = urlPhoto;

          //Update my item
          await docRef.update(itemToUpdate);
        } catch (e) {
          throw Exception("Error actualizando el jurado");
        }
      } else {
        throw Exception('No tienes permisos para realizar esta acción');
      }
    } else {
      throw Exception(
          'Error al realizar esta acción, inicia sesión e intentalo de nuevo');
    }
  }

  @override
  Future<void> deleteJudge(String id) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();

    if (user != null) {
      if (currentUser.admin == true) {
        try {
          await db.collection(judges).doc(id).delete();
        } catch (e) {
          throw Exception('Error eliminando jurado');
        }
      } else {
        throw Exception('No tienes permisos para realizar esta acción');
      }
    } else {
      throw Exception(
          'Error al realizar esta acción, inicia sesión e intentalo de nuevo');
    }
  }
}
