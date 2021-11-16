import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pricestore/firebase/authentication/authentication.dart';
import 'package:pricestore/firebase/fetch_and_upload/upload_user.dart';

class SignController extends GetxController {
  TextEditingController email = TextEditingController();  /// Email Text Controller
  TextEditingController form_number = TextEditingController(); /// Phone Text Controller
  TextEditingController password = TextEditingController(); /// Password Text Controller
  TextEditingController form_name = TextEditingController(); /// Name Text Controller

  /// Custom Created Authentication Class For Sign Up And Sign In Methods
  Authentication _authentication = Authentication();
  RxBool _isObscure = true.obs;
  bool get isObscure => _isObscure.value;

  /// This Method is User in Password Field to Hide/Show Password Text
  void isObscureFun() {
    _isObscure.value = !_isObscure.value;
  }
  /// Controller SignUp Method
  void signUp(
      {required String email,
      required String password,
      required String phone,
      required String name}) async {
    if (password.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        name.isNotEmpty) {
      User? _user = await _authentication.signUpUserInFireBase(
          email: email, password: password);
      if (_user!.uid.isNotEmpty) {
        UserInfoClass.uploadUserInfo(
            userName: name, userEmail: email, userId: _user.uid, phone: phone);
      }
    } else {
      print("Some Field is Empty");
    }
  }
 /// Controller SignIn Method
  void signIn({required String email, required String password}) async {
    if (password.isNotEmpty && email.isNotEmpty) {
      User? _user = await _authentication.signInUserInFireBase(
          email: email, password: password);
      if (_user!.uid.isNotEmpty) {
        // UserInfoClass.uploadUserInfo(userName: name, userEmail: email, userId: _user.uid, phone: phone);
      }
    } else {
      print("Some Field is Empty");
    }
  }

  /// Dispose All Controllers
  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    form_number.dispose();
    password.dispose();
    form_name.dispose();

    super.dispose();
  }
}
