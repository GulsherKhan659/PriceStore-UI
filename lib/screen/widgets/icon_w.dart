import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class IconW extends StatelessWidget {
  IconW({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: MyColor.icon_color,
      radius: 30,
      child: Container(
          padding: EdgeInsets.all(10),
          child: Image(
              image: AssetImage(
                image,
              ))),
    );
  }
}