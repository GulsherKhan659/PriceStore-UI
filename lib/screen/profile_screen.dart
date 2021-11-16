import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/drawer_controller.dart';
import '/screen/widgets/background.dart';
import '/utils/app_bar.dart';
import '/utils/footer.dart';

import '/utils//drawer.dart';
import '/screen/widgets/floating_button.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
  RDrawerController  _rDrawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.profilescaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.profilescaffoldkey,
      floatingActionButton:FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: AppBg(
        child: Column(
          children: [
            Expanded(child: Center(child: Text("Profile Screen",style: TextStyle(color: Colors.white),),)),
            Footer(),
          ],
        ),
      ),
    );
  }
}
