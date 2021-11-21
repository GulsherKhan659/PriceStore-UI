import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class IconW extends StatelessWidget {
  IconW({Key? key, required this.brandName, required this.function})
      : super(key: key);
  String brandName;
  Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(brandName),
      child: CircleAvatar(
        // foregroundColor: Colors.red,
        backgroundColor: Colors.white,
        radius: 40,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              image: DecorationImage(
                image: AssetImage(
                  'assets/${brandName}.png',
                ),
              )),

          // child: Image(
          //   image:
          // ),
        ),
      ),
    );
  }
}
