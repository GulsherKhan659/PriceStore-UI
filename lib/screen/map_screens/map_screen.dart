import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import '/controllers/drawer_controller.dart';
import '/utils/app_bar.dart';
import '/utils/drawer.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key, required this.image}) : super(key: key);
  String image;
  RDrawerController _rDrawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    print(image);
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.mapscreenscaffoldkey),
      endDrawer: CustomDrawer(),
      // key: _rDrawerController.mapscreenscaffoldkey,
      // floatingActionButton:FAB(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: LayoutBuilder(builder: (context, constraint) {
        return Container(
          width: constraint.maxWidth,
          height: constraint.maxHeight,
          child: PhotoView(
            imageProvider: AssetImage(image),
          ),
        );
      }),
    );
    ;
  }
}
