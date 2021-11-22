import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pricestore/modals/user_modal.dart';

class FetchUserInfo {
  static Future<UserBeanClass> otherUser({required String userID}) async {
    try {
      var _instance = await FirebaseFirestore.instance;
      var _user = await _instance.collection("Users").doc("$userID").get();
      return UserBeanClass.fromJson(_user.data()!);
    } catch (e) {
      print(e.toString());
      throw "SomeThing Went Wrong";
    }
  }
}
