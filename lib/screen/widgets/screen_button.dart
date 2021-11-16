import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/navigator_controller.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:dotted_border/dotted_border.dart';
class ScreenButton extends StatelessWidget {
   ScreenButton({Key? key,required this.iconName,required this.iconImage,required this.routeName}) : super(key: key);
  String iconName;
  String iconImage;
  String routeName;
  NavigatorController _navigatorController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            _navigatorController.naivgationMethod(screen: iconName);
            Get.toNamed(routeName);},
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: DottedBorder(
              color: MyColor.font_color,
              borderType: BorderType.Circle,
             padding: const EdgeInsets.all(10),
              // stroeWidth: 1,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: MyColor.font_color,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    scale: 12,
                    image: AssetImage("assets/$iconImage"),
                  ),

                ),

              ),
            ),

          ),
        ),
        Text(iconName.toUpperCase(),style: TextStyle(
          // decorationStyle: TextDecoration,
          height: 1.8,
          letterSpacing: 1.2,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: MyColor.font_color
        ),)
      ],
    );
  }
}
