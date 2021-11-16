import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key,required this.hint,required this.prefix,required this.controller, this.isText = true,this.isEmail = false}) : super(key: key);
  String hint;
  IconData prefix;
  bool isText;
  bool isEmail;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1.5,
          color: MyColor.font_color,
        ),
      ),
      child: TextField(
        keyboardType:isText ? isEmail ? TextInputType.emailAddress :TextInputType.text :TextInputType.phone ,
        controller: controller,

        style: TextStyle(
            fontSize: 15,
            color: MyColor.font_color
        ),
        decoration: InputDecoration(

          icon: Icon(prefix,size: 20,color: MyColor.font_color.withOpacity(0.5),),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 15,
            color: MyColor.font_color.withOpacity(0.5),
          ) ,
          border:InputBorder.none,
        ),
      ),
    );
  }
}
