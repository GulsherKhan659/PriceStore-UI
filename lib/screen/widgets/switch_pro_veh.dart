import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class SwitchProVeh extends StatelessWidget {
  SwitchProVeh({Key? key, required this.isPrperty, required this.label})
      : super(key: key);
  bool isPrperty;
  String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.symmetric(vertical: 10),
              //width: wifdth * 0.35,
              color: isPrperty
                  ? MyColor.backgroud_secondary_color
                  : MyColor.icon_color,
              alignment: Alignment.center,
              child: Text(
                "$label",
                style: TextStyle(
                    color: MyColor.font_color,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ))),
    );
  }
}
