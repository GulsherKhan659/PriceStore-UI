import 'package:flutter/material.dart';
import '/utils/routes.dart';
import 'screen/home_screen.dart';
import 'screen/drawer.dart';
import 'screen/filter_screen.dart';
import 'screen/find_car.dart';
import 'screen/find_perfect_property_screen.dart';
import 'screen/find_place.dart';
import 'screen/house_screen.dart';
import 'screen/map_screen.dart';
import 'screen/phase_screen.dart';
import 'screen/search_car.dart';

void main()=> runApp(
  MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Price Store",
     routes: routes,
      // home:SearchCar()//MapScreen()////CustomDrawer()//MapScreen(),//CustomDrawer(),////FilterScreen()//SearchCar()//FindPerfectPlace()//FindPlace(),//HomeScreen(), //HouseScreen()//SearchCar()////FindCarScreen(),//,
    );

  }
}
