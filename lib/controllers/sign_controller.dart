import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/firebase/authentication/authentication.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_user_info.dart';
import 'package:pricestore/firebase/fetch_and_upload/upload_user.dart';
import 'package:pricestore/modals/user_modal.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';

class SignController extends GetxController {
  UserBeanClass? loginUser;
  RxBool _isLogIn = false.obs;
  bool get isLogIn => _isLogIn.value;
  TextEditingController email = TextEditingController();

  /// Email Text Controller
  TextEditingController form_number = TextEditingController();

  /// Phone Text Controller
  TextEditingController password = TextEditingController();

  /// Password Text Controller
  TextEditingController form_name = TextEditingController();

  /// Name Text Controller

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
    _isLogIn.value = false;
    if (password.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        name.isNotEmpty) {
      User? _user = await _authentication.signUpUserInFireBase(
          email: email, password: password);
      if (_user!.uid.isNotEmpty) {
        await UserInfoClass.uploadUserInfo(
            userName: name, userEmail: email, userId: _user.uid, phone: phone);
        loginUser = await FetchUserInfo.otherUser(userID: _user.uid);
        if (loginUser!.name!.isNotEmpty) {
          _isLogIn.value = true;
          Get.offAndToNamed(RouteName.ProfileRoute);
        }
      }
    } else {
      Get.defaultDialog(
        barrierDismissible: true,
        backgroundColor: MyColor.backgroud_secondary_color,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.amberAccent,
                  size: 20,
                ),
                Text(
                  "Please Fill All the Fields",
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text("OK"),
              ),
            ),
          ],
        ),
      );
      print("Some Field is Empty");
    }
  }

  /// Controller SignIn Method
  void signIn({required String email, required String password}) async {
    _isLogIn.value = false;
    if (password.isNotEmpty && email.isNotEmpty) {
      User? _user = await _authentication.signInUserInFireBase(
          email: email, password: password);
      if (_user!.uid.isNotEmpty) {
        // UserInfoClass.uploadUserInfo(userName: name, userEmail: email, userId: _user.uid, phone: phone);
        loginUser = await FetchUserInfo.otherUser(userID: _user.uid);
        if (loginUser!.name!.isNotEmpty) {
          _isLogIn.value = true;
          Get.offAndToNamed(RouteName.ProfileRoute);
        }
      }
    } else {
      Get.defaultDialog(
        barrierDismissible: true,
        backgroundColor: Colors.grey[400],
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.amberAccent,
                  size: 20,
                ),
                Text(
                  "Please Fill All the Fields",
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text("OK"),
              ),
            ),
          ],
        ),
      );
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
