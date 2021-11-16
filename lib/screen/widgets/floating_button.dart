import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/navigator_controller.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';

Widget FAB(){
  NavigatorController _nvController = Get.find();
  return Builder(
    builder: (context) {
      return Container(
        height: 68,
        width: 68,
        margin: EdgeInsets.only(bottom: 12),
        child: FloatingActionButton(
          backgroundColor: MyColor.icon_color,
          child: Obx(
           ()=>Image(image: AssetImage(_nvController.map ?"assets/mapicon.png":"assets/w_map.png"),
            width: 40,
              height: 40,
            ),
          ),
          onPressed: (){
            if(_nvController.map)
              return;
            print("is Active now");
            _nvController.naivgationMethod(screen:"FIND LOCATION");
            Get.offAndToNamed(RouteName.FindPlaceRoute);
          },
        ),
      );
    }
  );
}