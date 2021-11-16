import 'package:get/get.dart';

class NavigatorController extends GetxController {
  RxBool _home = false.obs;
  RxBool _car = false.obs;
  RxBool _property = false.obs;
  RxBool _profile = false.obs;
  RxBool _map = false.obs;

  bool get home => _home.value;
  bool get car => _car.value;
  bool get property => _property.value;
  bool get profile => _profile.value;
  bool get map => _map.value;

 ///Method for Custom Navigation Bar To Change Icons Colors and Naviagtion
  void naivgationMethod({required String screen}) {
    switch (screen) {
      case "Home":
        _home.value = true;
        _car.value = false;
        _property.value = false;
        _profile.value = false;
        _map.value=false;
        break;
      case "Cars":
        _home.value = false;
        _car.value = true;
        _property.value = false;
        _profile.value = false;
        _map.value=false;
        break;
      case "Property":
        _home.value = false;
        _car.value = false;
        _property.value = true;
        _profile.value = false;
        _map.value=false;
        break;
      case "Profile":
        _home.value = false;
        _car.value = false;
        _property.value = false;
        _profile.value = true;
        _map.value=false;
        break;
      case "FIND LOCATION":
        _home.value = false;
        _car.value = false;
        _property.value = false;
        _profile.value = false;
        _map.value=true;
        break;
    }
  }
}
