import 'package:firebase_auth/firebase_auth.dart';
import 'package:fiura_ecosystem/features/login/domain/repositories/login_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRepositoryImp extends LoginRepository {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gsA = await googleSignInAccount!.authentication;

    UserCredential user =
        await auth.signInWithCredential(GoogleAuthProvider.credential(
      idToken: gsA.idToken,
      accessToken: gsA.accessToken,
    ));

    return user;
  }

  @override
  Future<void> logOut() async {
    await auth.signOut().then((value) => print("Log Out completed"));
    googleSignIn.signOut().then((value) => print("All sesions closed"));
  }
}
