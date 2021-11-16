import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/screen/widgets/zoom_image.dart';
import 'package:pricestore/utils/colors.dart';

class ImageCard extends StatelessWidget {
  ImageCard({Key? key,required this.image,required this.width}) : super(key: key);
  double width;
  String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(()=>ZoomImageWidget(image: image)),
      child: Container(
        height:120,
        width:width/3.5,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(spreadRadius: 0.5,color: Colors.white.withOpacity(0.5),blurRadius: 1.2)],
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage("$image"),
                fit: BoxFit.fill
            ),
            color: MyColor.backgroud_secondary_color

        ),
      ),
    );
  }
}