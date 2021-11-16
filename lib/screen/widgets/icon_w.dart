import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';

class IconW extends StatelessWidget {
  IconW({Key? key,required this.brandName,required this.function}) : super(key: key);
  String brandName;
  Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>function(brandName),
      child: CircleAvatar(
         // foregroundColor: Colors.red,
          backgroundColor:Colors.blue,
          radius: 40,
          child: Container(
              // padding: EdgeInsets.all(10),
              child:Image(
                  image: AssetImage(
                    'assets/${brandName}.png',
                  ))),
      ),
    );
  }
}