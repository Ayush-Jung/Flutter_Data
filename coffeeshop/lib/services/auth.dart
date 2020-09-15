import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anomously

  Future signInAnon() async {
    try {
      var result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
