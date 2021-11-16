import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/navigator_controller.dart';
import 'package:pricestore/utils/route_name.dart';
import '/screen/widgets/footer_icon.dart';

import 'colors.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);
  NavigatorController _nvController = Get.find();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
        ()=> Stack(
        children: [
          ClipPath(
            clipper: CCliper(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: 55,
              width: size.width,
              // width: double.infinity,
              color: MyColor.footer_color,
            ),
          ),
          Container(
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

        ],
      ),
    );
  }
}

class CCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0012500, 0);
    path_0.quadraticBezierTo(
        size.width * 0.2293750, 00, size.width * 0.3775000, 0);
    path_0.cubicTo(
        size.width * 0.3896875,
        size.height * 0.8975000,
        size.width * 0.6103125,
        size.height * 0.9125000,
        size.width * 0.6262500,
        0);
    path_0.quadraticBezierTo(
        size.width * 0.7703125, size.height * 0, size.width * 0.9987500, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width * 0.0012500, 0);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
    // throw UnimplementedError();
  }
}
