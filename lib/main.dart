import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/demo_screen.dart';
import 'package:pricestore/screen/first_screen.dart';
import 'package:pricestore/utils/route_name.dart';
import '/utils/routes.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 // void check ()async{
 //   await FirebaseFirestore.instance.collection("Vehicles").get().then((value){
 //     value.docs.forEach((element) {
 //       print(element.data());
 //     });
 //   });
 //
 // }

  @override
  Widget build(BuildContext context) {
  // check();
    return GetMaterialApp(
      title: "Price Store",
      getPages: APP_ROUTES,
      //home:DemoScreen(),
      //routes: routes,
     // initialRoute:RouteName.FirstScreenRoute ,

     // initialRoute: RouteName.FirstScreenRoute,
      // home:SearchCar()//MapScreen()////CustomDrawer()//MapScreen(),//CustomDrawer(),////FilterScreen()//SearchCar()//FindPerfectPlace()//FindPlace(),//HomeScreen(), //HouseScreen()//SearchCar()////FindCarScreen(),//,
    );

  }
}
