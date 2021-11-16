import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/navigator_controller.dart';
import '/utils/colors.dart';
class FooterIcon extends StatelessWidget {
  var footericon;
  final bool isIconActive;
  final bool isFooterIcon;
  final String footertitle;
  final String routename;
  FooterIcon({required this.footericon,required this.isFooterIcon,required this.isIconActive, required this.footertitle,required this.routename});
     NavigatorController _nvController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          if(isIconActive)
            return;
          _nvController.naivgationMethod(screen: footertitle);
          Get.offAndToNamed(routename);
        },
        child: Container(
        //color: MyColor.footer_color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           isFooterIcon?footericon
               :
           Container(
             width: 35,
             height: 35,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(footericon)),
             ),
           ),
            Text(footertitle,style: TextStyle(
              color: MyColor.font_color,
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
