import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class MyFavAds extends StatelessWidget {
  MyFavAds({Key? key, required this.label, required this.function})
      : super(key: key);
  String label;
  Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card(
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
              //width: wifdth * 0.35,
              //color: MyColor.footer_color,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$label",
                    style: TextStyle(
                        //        color: MyColor.font_color,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    //r  color: MyColor.font_color,
                    size: 30,
                  )
                ],
              )),
        ));
  }
}
