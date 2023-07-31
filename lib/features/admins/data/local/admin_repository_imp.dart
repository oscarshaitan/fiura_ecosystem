import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:fiura_ecosystem/features/home/repository/user_respository.dart';

import '../../domain/repositories/admin_repository.dart';

class AdminRepositoryImp extends AdminRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final UserRepository userRepository;

  //Collections
  final String users = "users";

  AdminRepositoryImp(
      {required this.db, required this.auth, required this.userRepository});

  @override
  Future<void> addAdmin(String uid) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();

    if (user != null) {
      if (currentUser.admin == true) {
        try {
          await db.collection(users).doc(uid).update({"admin": true});
        } catch (e) {
          throw Exception('Error otorgando permisos de administrador');
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
  Future<void> deleteAdmin(String uid) async {
    final User? user = auth.currentUser;
    final UserEntity currentUser = await userRepository.getCurrentUser();

    if (user != null) {
      if (currentUser.admin == true) {
        try {
          await db.collection(users).doc(uid).update({"admin": false});
        } catch (e) {
          throw Exception('Error revocando permisos de administrador');
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
  Future<List<UserEntity>> getAdmins() async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<UserEntity> userList = [];

    if (user != null) {
      collectionRef = db.collection(users);
      querySnapshot = await collectionRef.get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        //If the user is admin and is not the current user save it to the list
        if (doc["admin"] == true && doc["uid"] != user.uid) {
          userList.add(UserEntity.fromJson(doc.data() as Map<String, dynamic>));
        }
      }
    }

    return userList;
  }

  @override
  Future<List<UserEntity>> searchUser(String email) async {
    final User? user = auth.currentUser;
    final CollectionReference collectionRef;
    final QuerySnapshot querySnapshot;
    final List<UserEntity> userList = [];

    if (user != null) {
      collectionRef = db.collection(users);
      querySnapshot = await collectionRef
          .where("email", isGreaterThanOrEqualTo: email)
          .where("admin", isEqualTo: false)
          .get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        userList.add(UserEntity.fromJson(doc.data() as Map<String, dynamic>));
      }
    }

    return userList;
  }
}
