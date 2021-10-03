import 'package:flutter/material.dart';

import '/utils/footer.dart';
import '/utils/app_bar.dart';
import 'package:pricestore/utils/route_name.dart';
import '/utils/colors.dart';
import 'widgets/drop_down_list.dart';
import 'widgets/small_buttons.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(context),
      backgroundColor: MyColor.backgroud_primary_color,
      body:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Expanded(child:Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: ListView(children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text("Filters",style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: MyColor.font_color,
                      ),),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                       CustomIconBuyAndRent(isBuy: true),
                       CustomIconBuyAndRent(isBuy: false),
                      ],),
                    ),
                  FieldDropDown(label:"City",text: "Select City",),
                  FieldDropDown(label:"Location",text: "Select Area",),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          child: Text("Price Range",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyColor.font_color,
                          ),),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child:Row(
                            children: [
                              Expanded(
                            flex: 1,
                                  child : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Min"),
                              Icon(Icons.arrow_drop_down),
                            ],)),
                              Expanded(
                                  flex: 1,
                                  child : Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Text("Max"),
                                      Icon(Icons.arrow_drop_down),
                                    ],)),
                            ],
                          ),
                        ),
                        FieldDropDown(label:"Property Type",text: "All Residential",),
                        SmallSquareButton(label: "Bedroom"),
                        SmallSquareButton(label: "Bath"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("More Filter",style: TextStyle(
                          color: MyColor.font_color,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),),
                        Container(
                          width: 100,
                          child: ElevatedButton(

                            style:ElevatedButton.styleFrom(
                              primary: MyColor.backgroud_secondary_color
                            ),
                            onPressed: ()=> Navigator.of(context).pushNamed(RouteName.SearchCarRoute),
                            child: Container(
                              padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                              child: Text("Apply"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],),
                )),
                Footer(),
              ],
            ),

    );
  }
}



//////////// Custom Icon Buy And Rent
class CustomIconBuyAndRent extends StatelessWidget {
   CustomIconBuyAndRent({Key? key,required this.isBuy}) : super(key: key);
  bool isBuy;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CircleAvatar(
          backgroundColor: MyColor.font_color,
          child:Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Image(image:AssetImage(isBuy?"assets/buy.png":"assets/rent.png"),fit: BoxFit.fitWidth,)) ,

          radius: 35,
        ),
        SizedBox(height: 5),
        Text(isBuy?"Buy":"Rent",style: TextStyle(
            fontSize: 16,
            color: MyColor.option_select_color,
            fontWeight: FontWeight.bold
        ),),
      ],
    );
  }
}

