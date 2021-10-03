import 'package:flutter/material.dart';
import 'package:pricestore/utils/route_name.dart';
import '/screen/widgets/footer_icon.dart';

import 'colors.dart';
Widget Footer (){
  return   Row(

  children: [

  FooterIcon(footericon: Icons.home, footertitle: "Home",routename: RouteName.HomeScreenRoute,),

  FooterIcon(footericon: Icons.directions_car_rounded, footertitle: "Cars",routename: RouteName.FindCarRoute,),

    FooterIcon(footericon: Icons.location_on, footertitle: "Location",routename: RouteName.MapRoute,),


    FooterIcon(footericon: Icons.apartment, footertitle: "Property",routename: RouteName.PerfectPropertyRoute,),

  FooterIcon(footericon: Icons.person_rounded, footertitle: "Profile",routename: RouteName.ProfileRoute,),





  ],

  );
}

