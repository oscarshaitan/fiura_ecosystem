import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura_ecosystem/features/images/domain/repositories/image_repository.dart';
import '../../domain/repositories/judge_repository.dart';

class JudgeRepositoryImp extends JudgeRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;

  //Collections
  final String judges = "judges";

  JudgeRepositoryImp(
      {required this.db, required this.auth, required this.imageRepository});

  @override
  Future<bool> addJudge(JudgeEntity judge, File image) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      docRef = await db.collection(judges).add({
        "name": judge.name,
        "about": judge.about,
        "socialNetwork": judge.socialNetwork,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      final String? urlPhoto =
          await imageRepository.saveImage(image, judge.urlPhoto);

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

        JudgeEntity judge = JudgeEntity.fromJson(data);

        judgesList.add(judge);
      }
    }

    return judgesList;
  }
}
