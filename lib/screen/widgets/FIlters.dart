import 'package:flutter/material.dart';
import 'FilterRangeWidget.dart';
import 'icon_w.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Filters",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconW(image: "assets/buy.png"),
                  Text(
                    "buy",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  IconW(image: "assets/rent.png"),
                  Text(
                    "rent",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Filterss(
            city: "City",
            location: "Select City",
          ),
          SizedBox(
            height: 10,
          ),
          Filterss(
            city: "Location",
            location: "Select Location",
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              "Price Range",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                FilterWidget(range: "min"),
                FilterWidget(
                  range: "Max",
                ),
              ],
            ),
          ),
          Filterss(
            city: "Location",
            location: "Select Location",
          )
        ],
      ),
    );
  }
}

class Filterss extends StatelessWidget {
  Filterss({Key? key, required this.city, required this.location})
      : super(key: key);
  String city;
  String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 250),
          child: Text(
            city,
            style: TextStyle(color: Colors.grey, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 300,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    location,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 40,
                )
              ],
            )),
      ],
    );
  }
}
