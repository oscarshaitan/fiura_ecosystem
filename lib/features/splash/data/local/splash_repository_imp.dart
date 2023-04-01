import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';

class SplashRepositoryImp extends SplashRepository {
  final FirebaseAuth auth;

  SplashRepositoryImp({required this.auth});

  @override
  Future<bool> getSplash() async {
    final User? user = auth.currentUser;

    return user != null;
  }
}
