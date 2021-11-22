import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/drawer_controller.dart';
import 'package:pricestore/controllers/navigator_controller.dart';
import 'package:pricestore/controllers/user_controller.dart';
import 'package:pricestore/screen/widgets/screen_button.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavigatorController());
    Get.put(RDrawerController());
    Get.put(UserController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Image(
                image: AssetImage("assets/fs_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Price Stories",
                      style: TextStyle(
                          letterSpacing: 2.5,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: MyColor.font_color),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome To Price Stories",
                      style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 1.2,
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          color: MyColor.font_color),
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ScreenButton(
                        iconImage: "homeicon.png",
                        iconName: "Property",
                        routeName: RouteName.PerfectPropertyRoute,
                      ),
                      ScreenButton(
                        iconImage: "caricon.png",
                        iconName: "Cars",
                        routeName: RouteName.FindCarRoute,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  child: ScreenButton(
                    iconImage: "mapicon.png",
                    iconName: "FIND LOCATION",
                    routeName: RouteName.FindPlaceRoute,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      "By HalMark Realtor",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
