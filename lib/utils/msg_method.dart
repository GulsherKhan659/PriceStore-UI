import 'package:url_launcher/url_launcher.dart';

class MsgMethod {
  static doCall({required String number}) async {
    await launch("tel:$number");
  }

  static doWhatsapp({required String number, required String msg}) async {
    String url = "https://api.whatsapp.com/send?phone=$number&text=$msg";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url is not launch by Device';
    }
  }
}
