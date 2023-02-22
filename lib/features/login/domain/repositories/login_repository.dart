import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginRepository {
  Future<UserCredential> signIn();
  Future<void> logOut();
}
