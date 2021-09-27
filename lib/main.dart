import 'package:flutter/material.dart';
import 'package:pricestore/screen/property_screen.dart';
import '/screen/homepage/home_screen.dart';
import 'screen/homepage/phase_screen.dart';

void main()=> runApp(
  MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Price Store",
      home:HomeScreen(),
    );

  }
}
