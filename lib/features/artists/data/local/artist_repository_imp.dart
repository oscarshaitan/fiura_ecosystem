import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura/core/entities/user/user_entity.dart';
import '../../../home/repository/user_respository.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/artist_repository.dart';

class ArtistRepositoryImp extends ArtistRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ImageRepository imageRepository;
  final UserRepository userRepository;

  //Collections
  final String artists = "artists";

  ArtistRepositoryImp(
      {required this.db,
      required this.auth,
      required this.imageRepository,
      required this.userRepository});

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

  @override
  Future<void> deleteArtist(String id) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();

    if (user != null) {
      if (currentUser.admin == true) {
        try {
          await db.collection(artists).doc(id).delete();
        } catch (e) {
          throw Exception('Error eliminando artista');
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
  Future<void> updateArtist(
      ArtistEntity artist, File? image, String previousPhotoName) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();
    late DocumentReference docRef;

    if (user != null) {
      if (currentUser.admin == true) {
        docRef = db.collection(artists).doc(artist.id);

        try {
          //Delete previous photo
          await imageRepository.deleteImage(previousPhotoName);

          //Add new artist photo
          final String? urlPhoto =
              await imageRepository.saveImage(image!, artist.urlPhoto);

          Map<String, dynamic> itemToUpdate = artist.toJson();

          itemToUpdate["urlPhoto"] = urlPhoto;

          //Update my item
          await docRef.update(itemToUpdate);
        } catch (e) {
          throw Exception("Error actualizando el artista");
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
