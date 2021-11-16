import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';
class PasswordField extends StatelessWidget {
  PasswordField({Key? key,required this.hint,required this.prefix,required this.controller,required this.isObscure,required this.funtion}) : super(key: key);
  String hint;
  bool isObscure;
  VoidCallback funtion;
  IconData prefix;
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
        controller: controller,
        obscureText: isObscure,
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
        suffix:
          GestureDetector(
              onTap:(){
                funtion();
              },
              child: Icon( isObscure?Icons.visibility_off:Icons.visibility,size: 20,color: MyColor.font_color.withOpacity(0.5),)),


        ),

      ),
    );
  }
}
