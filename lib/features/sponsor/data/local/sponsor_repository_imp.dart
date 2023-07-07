import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fiura_ecosystem/core/entities/sponsor_entity/sponsor_entity.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/sponsor_repository.dart';

class SponsorRepositoryImp extends SponsorRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final Reference storageRef;

  //Collections
  final String sponsors = "sponsors";

  SponsorRepositoryImp(
      {required this.db, required this.auth, required this.storageRef});

  @override
  Future<bool> addSponsor(SponsorEntity sponsor, File image) async {
    final User? user = auth.currentUser;
    final imageRef = storageRef.child(sponsor.urlPhoto);
    late DocumentReference docRef;
    late bool status;
    final ImageRepository imageRepository = ImageRepository();

    if (user != null) {
      docRef = await db.collection(sponsors).add({
        "name": sponsor.name,
        "about": sponsor.about,
        "socialNetwork": sponsor.socialNetwork,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      final String? urlPhoto = await imageRepository.saveImage(image, imageRef);

      if (result.data() != null && urlPhoto != null) {
        var id = result.id;
        await db
            .collection(sponsors)
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
  Future<List<SponsorEntity>> getSponsors() async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<SponsorEntity> sponsorsList = [];

    if (user != null) {
      collectionRef = db.collection(sponsors);
      querySnapshot = await collectionRef.get();

      for (QueryDocumentSnapshot element in querySnapshot.docs) {
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;

        SponsorEntity sponsor = SponsorEntity.fromJson(data);

        sponsorsList.add(sponsor);
      }
    }

    return sponsorsList;
  }

  @override
  Future<SponsorEntity> getSponsor(String id) async {
    late SponsorEntity sponsor;
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final DocumentSnapshot documentSnapshot;

    if (user != null) {
      collectionRef = db.collection(sponsors);
      documentSnapshot = await collectionRef.doc(id).get();

      sponsor = SponsorEntity.fromJson(
          documentSnapshot.data() as Map<String, dynamic>);
    }

    return sponsor;
  }
}
