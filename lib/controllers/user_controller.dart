import 'package:get/state_manager.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_user_info.dart';
import 'package:pricestore/modals/user_modal.dart';

class UserController extends GetxController {
  RxString _otherUserNum = "".obs;
  String get otherUserNum => _otherUserNum.value;

  Future<String> setUserInfo({required String? userId}) async {
    UserBeanClass _uClass = await FetchUserInfo.otherUser(userID: userId!);
    _otherUserNum.value = _uClass.phone!;

    return _otherUserNum.value;
  }
}
