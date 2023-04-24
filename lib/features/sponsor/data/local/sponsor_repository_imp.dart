import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/sponsor_entity/sponsor_entity.dart';
import '../../domain/repositories/sponsor_repository.dart';

class SponsorRepositoryImp extends SponsorRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;

  //Collections
  final String sponsors = "sponsors";

  SponsorRepositoryImp({required this.db, required this.auth});

  @override
  Future<bool> addSponsor(SponsorEntity sponsor) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      docRef = await db.collection(sponsors).add({
        "name": sponsor.name,
        "about": sponsor.about,
        "socialNetwork": sponsor.socialNetwork,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      if (result.data() != null) {
        var id = result.id;
        await db.collection(sponsors).doc(id).update({"id": id});
        status = true;
      } else {
        status = false;
      }
    }

    return status;
  }
}
