import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pricestore/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import 'widgets/car_card_grid.dart';
class SearchCar extends StatelessWidget {
  const SearchCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(context),

      backgroundColor: MyColor.backgroud_primary_color,
      body: LayoutBuilder(
          builder: (context,constraint){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  child: Text("All Availble Cars For Sale",style: TextStyle(
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
                 CarCardGrid(cardCount: 6,),
                  ],
                ),),
                Footer(),
              ],
            );
          }
      ),

    );
  }
}
