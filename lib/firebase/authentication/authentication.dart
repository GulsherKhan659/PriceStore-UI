import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  FirebaseAuth _firebaseInstance = FirebaseAuth.instance;

  /// SignOut User Method
  Future<void> signOut()async{
     return await _firebaseInstance.signOut();
  }

  /// SignUp User Method
  Future<User?> signUpUserInFireBase(
      {required String email, required String password}) async {
    try {
      /// Create a new credential
      UserCredential signUpUser = await _firebaseInstance
          .createUserWithEmailAndPassword(email: email, password: password);
      User _firebaseUser = signUpUser.user!;
      return _firebaseUser;
    } catch (e) {
      print("Exception In signUpFirebase from Authentication Class");
      print(e.toString());
      return null;
    }
  }

///Sign In User Method
  Future<User?> signInUserInFireBase(
      {required String email, required String password}) async {
    try {
      UserCredential _userCredential = await _firebaseInstance
          .signInWithEmailAndPassword(email: email, password: password);
      return _userCredential.user;
    } catch (e) {
      print("Exception In signInFirebase from Authentication Class");
      print(e.toString());
      return null;
    }
  }


}
