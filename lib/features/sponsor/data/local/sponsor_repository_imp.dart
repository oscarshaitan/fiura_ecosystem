import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart';
import 'package:fiura/core/entities/user/user_entity.dart';
import 'package:fiura/features/home/repository/user_respository.dart';

import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/sponsor_repository.dart';

class SponsorRepositoryImp extends SponsorRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;
  final UserRepository userRepository;

  //Collections
  final String sponsors = "sponsors";

  SponsorRepositoryImp({required this.db, required this.auth, required this.imageRepository, required this.userRepository});

  @override
  Future<bool> addSponsor(SponsorEntity sponsor, File image) async {
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

      //Upload image to firebase storage
      final String? urlPhoto = await imageRepository.saveImage(image, sponsor.urlPhoto);

      if (result.data() != null && urlPhoto != null) {
        var id = result.id;
        await db.collection(sponsors).doc(id).update({"id": id, "urlPhoto": urlPhoto});
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

      sponsor = SponsorEntity.fromJson(documentSnapshot.data() as Map<String, dynamic>);
    }

    return sponsor;
  }

  @override
  Future<void> updateSponsor(SponsorEntity sponsor, File? image, String previousPhotoName) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();
    late DocumentReference docRef;

    if (user != null) {
      if (currentUser.admin == true) {
        docRef = db.collection(sponsors).doc(sponsor.id);

        try {
          //Delete previous photo
          await imageRepository.deleteImage(previousPhotoName);

          //Add new artist photo
          final String? urlPhoto = await imageRepository.saveImage(image!, sponsor.urlPhoto);

          Map<String, dynamic> itemToUpdate = sponsor.toJson();

          itemToUpdate["urlPhoto"] = urlPhoto;

          //Update my item
          await docRef.update(itemToUpdate);
        } catch (e) {
          throw Exception("Error actualizando el patrocinador");
        }
      } else {
        throw Exception('No tienes permisos para realizar esta acción');
      }
    } else {
      throw Exception('Error al realizar esta acción, inicia sesión e intentalo de nuevo');
    }
  }

  @override
  Future<void> deleteSponsor(String id) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();

    if (user != null) {
      if (currentUser.admin == true) {
        try {
          await db.collection(sponsors).doc(id).delete();
        } catch (e) {
          throw Exception('Error eliminando patrocinador');
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
