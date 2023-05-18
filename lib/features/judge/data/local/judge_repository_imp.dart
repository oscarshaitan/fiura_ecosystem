import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/judge_entity/judge_entity.dart';
import '../../domain/repositories/judge_repository.dart';

class JudgeRepositoryImp extends JudgeRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;

  //Collections
  final String judges = "judges";

  JudgeRepositoryImp({required this.db, required this.auth});

  @override
  Future<bool> addJudge(JudgeEntity judge) async {
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

      if (result.data() != null) {
        var id = result.id;
        await db.collection(judges).doc(id).update({"id": id});
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

        JudgeEntity judge = JudgeEntity(
            id: data["id"],
            name: data["name"],
            about: data["about"],
            socialNetwork: data["socialNetwork"]);

        judgesList.add(judge);
      }
    }

    return judgesList;
  }
}
