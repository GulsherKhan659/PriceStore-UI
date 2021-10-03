import 'package:pricestore/screen/carbrands.dart';
import 'package:pricestore/screen/filter_screen.dart';
import 'package:pricestore/screen/find_car.dart';
import 'package:pricestore/screen/find_perfect_property_screen.dart';
import 'package:pricestore/screen/find_place.dart';
import 'package:pricestore/screen/home_screen.dart';
import 'package:pricestore/screen/house_screen.dart';
import 'package:pricestore/screen/map_screen.dart';
import 'package:pricestore/screen/phase_screen.dart';
import 'package:pricestore/screen/profile_screen.dart';
import 'package:pricestore/screen/property_screen.dart';
import 'package:pricestore/screen/search_car.dart';

import 'route_name.dart';

final routes = {
  RouteName.HomeScreenRoute : (context) => HomeScreen(),
  RouteName.CarBrandRoute : (context)=>CarBrands(),
  RouteName.FilterScreenRoute:(context)=>FilterScreen(),
  RouteName.FindCarRoute:(context)=>FindCarScreen(),
  RouteName.PerfectPropertyRoute:(context)=>FindPerfectPlace(),
  RouteName.FindPlaceRoute:(context)=>FindPlace(),
  RouteName.HouseRoute:(context)=>HouseScreen(),
  RouteName.MapRoute:(context)=>MapScreen(),
  RouteName.PhaseScreenRoute:(context)=>PhaseScreen(),
  RouteName.PropertyRoute:(context)=>PropertyScreen(),
  RouteName.SearchCarRoute :(context)=>SearchCar(),
  RouteName.ProfileRoute : (context)=>ProfileScreen(),
};