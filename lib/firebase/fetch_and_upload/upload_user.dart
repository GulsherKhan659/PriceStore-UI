import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pricestore/modals/user_modal.dart';

class UserInfoClass {
  ///Method to upload user info to firestore
  static Future<void> uploadUserInfo({
    required String userName,required String userEmail,required String userId,required String phone
  })async{
    UserBeanClass _userInfoModal  =UserBeanClass(phone: phone, name: userName, email: userEmail);
    try{
      await FirebaseFirestore.instance.collection("Users").doc(userId).set(_userInfoModal.toJson()).then((value) => print("Upload SuccessFully"));

    }catch (e){
      print( "Not Upload SuccessFully");
      print("Exception In uploadUserInfo");
      print(e);
    }
  }
  ///Method to get user info from firestore
  static Future<UserBeanClass> setFirebaseDataToModal({required String id})async{
    Map<String,dynamic> data= (await FirebaseFirestore.instance.collection("Users").doc(id).get()) as Map<String, dynamic>;
    return UserBeanClass.fromJson(data);
  }


}