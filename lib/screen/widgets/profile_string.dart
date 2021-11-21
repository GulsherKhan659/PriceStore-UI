import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class ProfileString extends StatelessWidget {
  ProfileString(
      {Key? key,
      required this.height,
      required this.lable,
      required this.value})
      : super(key: key);
  double height;
  String lable;
  String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: height * 0.05,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: MyColor.font_color, width: 0.05)),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$lable",
            style: TextStyle(
              color: MyColor.font_color,
              fontSize: 14,
            ),
          ),
          Text(
            "$value",
            style: TextStyle(
              color: MyColor.font_color,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
