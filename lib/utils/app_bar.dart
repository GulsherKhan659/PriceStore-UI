import 'package:flutter/material.dart';
import 'colors.dart';

AppBar MyAppBar(BuildContext context){
  return AppBar(
  backgroundColor: MyColor.backgroud_primary_color,
  leading: IconButton(
    onPressed: ()=>Navigator.of(context).pop(),
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

          //  Scaffold.of(context).showSnackBar(SnackBar(content: Text("adsas")));
     },icon: Icon(Icons.sort,size: 30,color: MyColor.icon_color,)),
    )
  ],
);
}