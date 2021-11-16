import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/screen/widgets/floating_button.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/footer.dart';
import 'package:pricestore/utils/route_name.dart';

import 'controllers/navigator_controller.dart';
import 'screen/widgets/footer_icon.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigatorController _nvController = Get.put(NavigatorController());
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: Container(color: Colors.purpleAccent,),
      bottomNavigationBar: Obx(
            ()=>
            ClipPath(
              clipper: CCliper(),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                // width: double.infinity,
                color: MyColor.footer_color,


             child:Container(
              color: Colors.transparent,
              //padding: EdgeInsets.only(top: 20),
              child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FooterIcon(
                    isFooterIcon: false,
                    isIconActive:_nvController.home,
                    footericon:_nvController.home ? "assets/homeicon.png":"assets/home.png",
                    footertitle: "Home",
                    routename: RouteName.HomeScreenRoute,
                  ),

                  FooterIcon(
                    isIconActive: _nvController.car,
                    isFooterIcon: false,
                    footericon: _nvController.car ? "assets/caricon.png":"assets/car.png",
                    footertitle: "Cars",
                    routename: RouteName.FindCarRoute,
                  ),
                  Expanded(child: Container()),
// FooterIcon(
//   footericon: Icons.location_on,
//   footertitle: "Location",
//   routename: RouteName.FindPlaceRoute,
// ),
                  FooterIcon(
                    isIconActive: _nvController.property,
                    isFooterIcon: false,
                    footericon: _nvController.property ? "assets/propicon.png":"assets/property.png",
                    footertitle: "Property",
                    routename: RouteName.PerfectPropertyRoute,
                  ),
                  FooterIcon(
                    isIconActive: _nvController.profile,
                    isFooterIcon: true,
                    footericon:_nvController.profile?
                    Icon(Icons.person_rounded,size: 35,color: Colors.black,):
                    Icon(Icons.person_rounded,size: 35,color: Colors.white,) ,
                    footertitle: "Profile",
                    routename: RouteName.ProfileRoute,
                  ),
                ],
              ),
            ),


        ),),
      ),
    );
  }
}
