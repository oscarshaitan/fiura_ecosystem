import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRepository {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth auth;
  final FirebaseFirestore db;

  //Collections
  final String users = "users";

  LoginRepository(
      {required this.googleSignIn, required this.auth, required this.db});

  Future<UserCredential> signIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gsA = await googleSignInAccount!.authentication;

    UserCredential user =
        await auth.signInWithCredential(GoogleAuthProvider.credential(
      idToken: gsA.idToken,
      accessToken: gsA.accessToken,
    ));

    //If Login is success
    if (user.user != null) {
      //Consult if the user exist in the database
      db
          .collection(users)
          .doc(user.user!.uid)
          .get()
          .then((DocumentSnapshot snapshot) {
        //If the user doesn't exist in the database
        if (snapshot.data() == null) {
          //Create the user document in the database
          db.collection(users).doc(user.user!.uid).set({
            "name": user.user!.displayName,
            "email": user.user!.email,
            "photo": user.user!.photoURL,
            "uid": user.user!.uid,
            "lastLogin": DateTime.now(),
          });
        }
      });
    }
    return user;
  }

  Future<void> logOut() async {
    await auth.signOut().then((value) => print("Log Out completed"));
    googleSignIn.signOut().then((value) => print("All sesions closed"));
  }
}
