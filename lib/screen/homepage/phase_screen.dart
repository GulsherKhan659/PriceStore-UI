import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pricestore/screen/homepage/widgets/home_grid.dart';
import 'package:pricestore/screen/homepage/widgets/home_icons.dart';
import 'package:pricestore/screen/homepage/widgets/property_card.dart';
import '/utils/colors.dart';
import '/screen/homepage/widgets/footer_icon.dart';
class PhaseScreen extends StatelessWidget {
  const PhaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.backgroud_primary_color,
        leading: Icon(Icons.chevron_left_rounded,color: MyColor.icon_color,),
        centerTitle: true,
        title: Container(
          width: 100,
          height: 100,
          child: Image(image: AssetImage("assets/logo.png"),
            fit: BoxFit.contain,),
        ),

        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.sort,size: 30,color: MyColor.icon_color,),
          )
        ],
      ),

      backgroundColor: MyColor.backgroud_primary_color,
      body: LayoutBuilder(
          builder: (context,constraint){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                
                Expanded(
                  child: Column(
                    children: [
                      SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 20, bottom: 30),
                                    child: Text(
                                      "Find Your Perfect Place",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20, bottom: 20),
                                    child: Text(
                                      "Bahria Phase 1-6",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                             CustomRow(number: "1"),
                                CustomRow(number: "2"),
                                CustomRow(number: "3"),
                                CustomRow(number: "4"),
                                CustomRow(number: "5"),
                                CustomRow(number: "6"),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: constraint.maxHeight/10,
                  width: constraint.maxWidth,
                  color: MyColor.footer_color,
                  child: Row(
                    children: [
                      FooterIcon(footericon: Icons.home, footertitle: "Home"),
                      FooterIcon(footericon: Icons.directions_car_rounded, footertitle: "Cars"),
                      Expanded(child: Container(), flex: 1,),
                      FooterIcon(footericon: Icons.apartment, footertitle: "Property"),
                      FooterIcon(footericon: Icons.person_rounded, footertitle: "Profile"),


                    ],
                  ),
                )
              ],
            );
          }
      ),

    );
  }
}

class CustomRow extends StatelessWidget {
   CustomRow({Key? key,required this.number}) : super(key: key);
  String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Text(
                "Bahria Phase $number",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
        width: 300,
        height: 40,
      ),
    );
  }
}

