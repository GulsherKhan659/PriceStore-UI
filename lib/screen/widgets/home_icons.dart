import 'package:flutter/material.dart';
import '/utils/colors.dart';
class HomeIcon extends StatelessWidget {
   HomeIcon({Key? key,required this.cardicon,required this.cardtitle}) : super(key: key);
   String cardtitle;
   IconData cardicon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(cardicon,color: MyColor.icon_color,
      size: 15,),
    SizedBox(width: 4,),
    Text(cardtitle,style: TextStyle(
    color: MyColor.icon_color,
    fontSize:14
    ),)]
    );
  }
}
