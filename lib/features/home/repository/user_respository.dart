import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';

class UserRepository {
  final FirebaseFirestore db;
  final FirebaseAuth auth;

  UserRepository(this.db, this.auth);

  Future<UserEntity> getCurrentUser() async {
    if (auth.currentUser != null) {
      try {
        var result =
            await db.collection('users').doc(auth.currentUser!.uid).get();
        return UserEntity.fromJson(result.data()!);
      } catch (e) {
        throw Exception('User not found');
      }
    } else {
      throw Exception('No User connected');
    }
  }
}
