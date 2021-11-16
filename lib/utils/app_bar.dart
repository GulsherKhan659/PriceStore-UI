import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/drawer_controller.dart';
import 'colors.dart';

AppBar MyAppBar(GlobalKey<ScaffoldState> scaffoldKey){
  RDrawerController _rDrawerController = Get.find();
  return AppBar(
  backgroundColor: MyColor.backgroud_primary_color,
  leading: IconButton(
    onPressed: ()=>Get.back(),
    icon:Icon( Icons.chevron_left_rounded,color: MyColor.icon_color,) ,
   ),
  centerTitle: true,
  title: Container(
    width: 100,
    height: 100,
    child: Image(image: AssetImage("assets/logo.png"),
      fit: BoxFit.contain,
    ),
  ),

  actions: [
    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
          onPressed: (){
         _rDrawerController.openDrawer(scaffoldKey);
          //  Scaffold.of(context).showSnackBar(SnackBar(content: Text("adsas")));
     },icon: Icon(Icons.sort,size: 30,color: MyColor.icon_color,)),
    )
  ],
);
}