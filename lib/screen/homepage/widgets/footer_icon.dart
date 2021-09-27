import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';
class FooterIcon extends StatelessWidget {
  final IconData footericon;
  final String footertitle;
  FooterIcon({required this.footericon,required this.footertitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(footericon,size: 35,color: MyColor.icon_color,),
        Text(footertitle,style: TextStyle(
          color: MyColor.font_color,
        ),),
      ],
    ), flex: 1,);
  }
}
