import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura/core/entities/user/user_entity.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore db;
  final FirebaseAuth auth;

  UserRepository(this.db, this.auth, this.googleSignIn);

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

  Future<void> deleteUser() async {
    if (auth.currentUser != null) {
      try {
        await db.collection('users').doc(auth.currentUser!.uid).delete();
        await auth.currentUser!.delete();
        auth.signOut();
        googleSignIn.signOut();
      } catch (e) {
        throw Exception('Error eliminando el usuario');
      }
    } else {
      throw Exception('No hay un usuario conectado');
    }
  }
}
