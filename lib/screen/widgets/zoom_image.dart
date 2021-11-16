import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pricestore/utils/colors.dart';

class ZoomImageWidget extends StatelessWidget {
  ZoomImageWidget({Key? key,required this.image}) : super(key: key);
 String? image;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraint)
    {
      return Stack(
        children: [

          Container(
            width: constraint.maxWidth,
            height: constraint.maxHeight,
            child: PhotoView(
              imageProvider: NetworkImage(image!),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              child: Material(
                color: Colors.transparent,
                child: CircleAvatar(
                    backgroundColor: MyColor.backgroud_secondary_color,
                    child: InkWell(
                        onTap: ()=>Get.back(),
                        child: Icon(Icons.close,color: Colors.white,))),
              ),
            ),
          ),
        ],
      );
    }
    );

  }
}
