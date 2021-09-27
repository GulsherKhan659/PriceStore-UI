import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pricestore/screen/homepage/widgets/home_grid.dart';
import 'package:pricestore/screen/homepage/widgets/home_icons.dart';
import 'package:pricestore/screen/homepage/widgets/property_card.dart';
import '/utils/colors.dart';
import '/screen/homepage/widgets/footer_icon.dart';
class PropertyScreen extends StatelessWidget {
  const PropertyScreen({Key? key}) : super(key: key);

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

                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  child: Text("All Availble Properties in Islamabad",style: TextStyle(
                      color: MyColor.font_color,
                      fontSize: 20
                  ),),
                ),
                Container(
                  color: Colors.white70,

                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2354 Resualt",style: TextStyle(
                        fontWeight: FontWeight.bold,


                      ),),
                      Row(
                        children: [
                          Text("Sort by : Defualt order",style: TextStyle(
                          fontWeight: FontWeight.bold,


                          )),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),

                    ],
                  ),
                ),
                Expanded(child: ListView(
                  children: [

                    PropertyCard(constraint: constraint, image: "assets/property1.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property2.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property1.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property2.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property1.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property2.jpg"),
                    PropertyCard(constraint: constraint, image: "assets/property1.jpg"),

                  ],
                ),),
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
