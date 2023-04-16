import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/artist_entity/artist_entity.dart';

import '../../domain/repositories/artist_repository.dart';

class ArtistRepositoryImp extends ArtistRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;

  //Collections
  final String artists = "artists";

  ArtistRepositoryImp({required this.db, required this.auth});

  @override
  Future<bool> addArtist(ArtistEntity artist) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      docRef = await db.collection(artists).add({
        "name": artist.name,
        "about": artist.about,
        "socialNetwork": artist.socialNetwork,
        "uid": user.uid,
        "creation_date": DateTime.now(),
      });
      final DocumentSnapshot result = await docRef.get();

      if (result.data() != null) {
        var id = result.id;
        await db.collection(artists).doc(id).update({"id": id});
        status = true;
      } else {
        status = false;
      }
    }

    return status;
  }
}
