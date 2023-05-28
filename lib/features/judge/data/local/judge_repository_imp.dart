import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import '../../domain/repositories/judge_repository.dart';

class JudgeRepositoryImp extends JudgeRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final Reference storageRef;

  //Collections
  final String judges = "judges";

  JudgeRepositoryImp(
      {required this.db, required this.auth, required this.storageRef});

  @override
  Future<bool> addJudge(JudgeEntity judge, File image) async {
    final User? user = auth.currentUser;
    final imageRef = storageRef.child(judge.urlPhoto);
    late DocumentReference docRef;
    late TaskSnapshot taskSnapshot;
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
      taskSnapshot = await imageRef.putFile(image);

      if (result.data() != null && taskSnapshot.state == TaskState.success) {
        var id = result.id;
        var urlPhoto = await imageRef.getDownloadURL();
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
