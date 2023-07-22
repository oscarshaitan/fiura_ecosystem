import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/artist_entity/artist_entity.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/artist_repository.dart';

class ArtistRepositoryImp extends ArtistRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;

  //Collections
  final String artists = "artists";

  ArtistRepositoryImp(
      {required this.db, required this.auth, required this.imageRepository});

  @override
  Future<bool> addArtist(ArtistEntity artist, File image) async {
    final User? user = auth.currentUser;
    late DocumentReference docRef;
    late bool status;

    if (user != null) {
      Map<String, dynamic> itemToAdd = artist.toJson();
      itemToAdd["creation_date"] = DateTime.now();
      itemToAdd["uid"] = user.uid;

      docRef = await db.collection(artists).add(itemToAdd);
      final DocumentSnapshot result = await docRef.get();

      //Upload image to firebase storage
      final String? urlPhoto =
          await imageRepository.saveImage(image, artist.urlPhoto);

      if (result.data() != null && urlPhoto != null) {
        var id = result.id;
        await db
            .collection(artists)
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
  Future<List<ArtistEntity>> getArtists() async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<ArtistEntity> artistList = [];

    if (user != null) {
      collectionRef = db.collection(artists);
      querySnapshot = await collectionRef.get();

      for (QueryDocumentSnapshot element in querySnapshot.docs) {
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;

        ArtistEntity artist = ArtistEntity.fromJson(data);

        artistList.add(artist);
      }
    }

    return artistList;
  }

  @override
  Future<ArtistEntity> getArtist(String id) async {
    late ArtistEntity artist;
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final DocumentSnapshot documentSnapshot;

    if (user != null) {
      collectionRef = db.collection(artists);
      documentSnapshot = await collectionRef.doc(id).get();

      artist = ArtistEntity.fromJson(
          documentSnapshot.data() as Map<String, dynamic>);
    }

    return artist;
  }
}
