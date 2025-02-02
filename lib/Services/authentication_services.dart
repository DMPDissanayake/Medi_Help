import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_medihelp/Models/user.dart';

class Auth {
  // Create the Firebase instance.
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user
  UserModel? _userWithFirebaseUser(User? user) {
    if (user == null) {
      return null;
    }
    return UserModel(
      uId: user.uid, // Assuming uId is a String
      // Firebase User does not have a password field
    );
  }

  //Create the strean for checking the auth
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUser);
  }

  // Sing in using email and password
  Future<UserModel?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// Log in using email and password
  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userWithFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
