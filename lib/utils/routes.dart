
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pricestore/screen/car_screens/car_filter_screen.dart';
import 'package:pricestore/screen/car_screens/car_screen.dart';
import 'package:pricestore/screen/car_screens/find_car.dart';
import 'package:pricestore/screen/car_screens/search_car.dart';
import 'package:pricestore/screen/first_screen.dart';
import 'package:pricestore/screen/home_screen.dart';
import 'package:pricestore/screen/map_screens/find_place.dart';
import 'package:pricestore/screen/profile_screen.dart';
import 'package:pricestore/screen/property_screens/find_perfect_property_screen.dart';
import 'package:pricestore/screen/property_screens/property_filter_screen.dart';
import 'package:pricestore/screen/property_screens/property_screen.dart';
import 'package:pricestore/screen/sign_in_screen.dart';
import 'package:pricestore/screen/sign_up_screen.dart';

import 'route_name.dart';

final List<GetPage> APP_ROUTES= [
  GetPage(name: RouteName.FirstScreenRoute , page: ()=>FirstScreen(),transition: Transition.noTransition),
  GetPage(name: RouteName.HomeScreenRoute, page: ()=> HomeScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.CarFilterScreenRoute  , page: ()=>CarFilterScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.PropertyFilterScreenRoute , page: ()=>ProperyFilterScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.FindCarRoute , page: ()=>FindCarScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.PerfectPropertyRoute, page: ()=>FindPerfectPlace(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.FindPlaceRoute, page: ()=>FindPlace(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
 // GetPage(name: RouteName.HouseRoute, page: ()=>HouseScreen()),
 // GetPage(name: RouteName.CarRoute, page: ()=>CarScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  //GetPage(name: RouteName.MapRoute, page: ()=>MapScreen()),
  GetPage(name: RouteName.PropertyRoute,page: ()=>PropertyScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.SearchCarRoute, page: ()=>SearchCar(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds: 300)),
  GetPage(name: RouteName.ProfileRoute, page: ()=>ProfileScreen(),transition: Transition.noTransition,transitionDuration: Duration(milliseconds:300)),
  GetPage(name: RouteName.SignInRoute, page: ()=>SignInScreen()),
  GetPage(name: RouteName.SignUpRoute, page: ()=>SignUpScreen()),
];
//
// final routes = {
//   RouteName.FirstScreenRoute:(context)=>FirstScreen(),
//   RouteName.HomeScreenRoute : (context) => HomeScreen(),
//   RouteName.CarBrandRoute : (context)=>CarBrands(),
//   RouteName.FilterScreenRoute:(context)=>FilterScreen(),
//   RouteName.FindCarRoute:(context)=>FindCarScreen(),
//   RouteName.PerfectPropertyRoute:(context)=>FindPerfectPlace(),
//   RouteName.FindPlaceRoute:(context)=>FindPlace(),
//   RouteName.HouseRoute:(context)=>HouseScreen(),
//   RouteName.MapRoute:(context)=>MapScreen(),
//   //RouteName.PhaseScreenRoute:(context)=>PhaseScreen(),
//   RouteName.PropertyRoute:(context)=>PropertyScreen(),
//   RouteName.SearchCarRoute :(context)=>SearchCar(),
//   RouteName.ProfileRoute : (context)=>ProfileScreen(),
// };