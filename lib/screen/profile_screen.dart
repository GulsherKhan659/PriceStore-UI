import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/sign_controller.dart';
import 'package:pricestore/screen/widgets/my_fav_ads.dart';
import 'package:pricestore/screen/widgets/profile_string.dart';
import 'package:pricestore/screen/widgets/switch_pro_veh.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';
import '/controllers/drawer_controller.dart';
import '/screen/widgets/background.dart';
import '/utils/app_bar.dart';
import '/utils/footer.dart';

import '/utils//drawer.dart';
import '/screen/widgets/floating_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  SignController _signController = Get.put(SignController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.profilescaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.profilescaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          children: [
            Expanded(child: LayoutBuilder(builder: (context, size) {
              return Obx(
                () => !_signController.isLogIn
                    ? Container(
                        child: Center(
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.toNamed(RouteName.SignInRoute),
                              child: Text("Sign In")),
                        ),
                      )
                    : SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.maxWidth * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.maxHeight * 0.05,
                                //   color: Colors.amber,
                              ),
                              ProfileString(
                                height: size.maxHeight,
                                lable: "Name ",
                                value: "${_signController.loginUser!.name}",
                              ),
                              ProfileString(
                                height: size.maxHeight,
                                lable: "Email",
                                value: "${_signController.loginUser!.email}",
                              ),
                              ProfileString(
                                height: size.maxHeight,
                                lable: "Mobile",
                                value: "${_signController.loginUser!.phone}",
                              ),
                              MyFavAds(
                                label: "RESET PASSWORD",
                                function: () {
                                  print("PadsF");
                                },
                              ),
                              Container(
                                  child: Row(
                                children: [
                                  SwitchProVeh(
                                      isPrperty: true, label: "PROPERTY"),
                                  SwitchProVeh(
                                      isPrperty: false, label: "VEHICLE"),
                                  // Expanded(flex: 1, child: Container()),
                                ],
                              )),
                              MyFavAds(
                                label: "MY ADS",
                                function: () {
                                  print("PadsF");
                                },
                              ),
                              MyFavAds(
                                label: "MY FAVOURITE",
                                function: () {
                                  print("VadsF");
                                },
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              MyFavAds(
                                label: "TERMS OF SERVICES",
                                function: () {
                                  print("VadsF");
                                },
                              ),
                              MyFavAds(
                                label: "RATE THE APP",
                                function: () {
                                  print("VadsF");
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
              );
            })),
            Footer(),
          ],
        ),
      ),
    );
  }
}
