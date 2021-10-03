import 'package:flutter/material.dart';
import 'package:pricestore/screen/drawer.dart';
import 'package:pricestore/utils/app_bar.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';


import 'widgets/FilterRangeWidget.dart';
import 'widgets/icon_circular.dart';

class CarBrands extends StatelessWidget {
  const CarBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      backgroundColor: MyColor.backgroud_primary_color,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Filter",
                style: TextStyle(
                    color: MyColor.font_color,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              "Brands",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                IconW(
                  image: "assets/youtube.png",
                ),
                IconW(image: "assets/instagram.png"),
                IconW(
                  image: "assets/facebook.png",
                ),
                IconW(
                  image: "assets/whatsapp.png",
                ),
                IconW(
                  image: "assets/youtube.png",
                ),
                IconW(image: "assets/instagram.png"),
                IconW(
                  image: "assets/facebook.png",
                ),
                IconW(
                  image: "assets/whatsapp.png",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 175),
            child: Text(
              "Price Range",
              style: TextStyle(color: MyColor.font_color, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: FilterWidget(
                  range: "Min",
                ),
              ),
              SizedBox(
                width: 2,
              ),
              FilterWidget(
                range: "Max",
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "More Filters",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationThickness: 1,
                  fontSize: 22,
                  color: MyColor.font_color),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Container for apply Box
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: GestureDetector(
                    onTap: ()=>Navigator.of(context).pushNamed(RouteName.SearchCarRoute),
                    child: Text(
                      "Apply",

                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
            width: 150,
            height: 30,
          )
        ],
      ),
    );
  }
}
