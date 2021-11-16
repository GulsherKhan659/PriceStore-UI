import 'package:flutter/material.dart';
import '/utils/colors.dart';
class HomeIcon extends StatelessWidget {
   HomeIcon({Key? key,required this.cardicon,required this.cardtitle,this.isCard=true}) : super(key: key);
   String cardtitle;
   IconData cardicon;
   bool isCard;
  @override
  Widget build(BuildContext context) {
    return isCard?Row(children: [


      Text(cardtitle,style: TextStyle(
          color: MyColor.icon_color,
          fontSize:14
      ),),
      Icon(cardicon,color: MyColor.icon_color,
        size: 15,),
    ]
    ):Row(children: [



      Icon(cardicon,color: MyColor.icon_color,
        size: 15,),
       SizedBox(width: 4,),
      Text(cardtitle,style: TextStyle(
          color: MyColor.icon_color,
          fontSize:14
      ),),
    ]
    );
  }
}
