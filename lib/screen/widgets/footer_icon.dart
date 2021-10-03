import 'package:flutter/material.dart';
import '/utils/colors.dart';
class FooterIcon extends StatelessWidget {
  final IconData footericon;
  final String footertitle;
  final String routename;
  FooterIcon({required this.footericon,required this.footertitle,required this.routename});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(routename);
        },
        child: Container(
        color: MyColor.footer_color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(footericon,size: 35,color: MyColor.icon_color,),
            Text(footertitle,style: TextStyle(
              color: MyColor.font_color,
            ),),
          ],
        ),
      ),
      ),
    );
  }
}
