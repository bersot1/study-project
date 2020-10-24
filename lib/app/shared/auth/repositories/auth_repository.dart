import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study_mobx_2/app/shared/auth/repositories/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> getGoogleLogin() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return user;
  }

  @override
  Future getUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    if (auth.currentUser != null) {
      getGoogleLogin();
    }
  }
}
