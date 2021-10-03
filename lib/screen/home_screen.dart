import 'package:flutter/material.dart';
import 'package:pricestore/utils/footer.dart';
import '/utils/app_bar.dart';
import '/screen/widgets/car_card_grid.dart';
import '/screen/widgets/property_card.dart';
import '/utils/colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar:MyAppBar(context),

      backgroundColor: MyColor.backgroud_primary_color,
      body: LayoutBuilder(
        builder: (context,constraint){
         return Column(
          children: [
            Center(
              child: Text("Welcome To PriceStore",style: TextStyle(
                  color: MyColor.font_color,
                  fontSize: 28
              ),),
            ),
             Expanded(child: ListView(
               children: [
                 Container(
                   padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                   child: Text("Availble Properties",style: TextStyle(
                       color: MyColor.font_color,
                       fontSize: 20
                   ),),
                 ),
                 PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: false),
                 PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: false,),
                 Container(
                   padding: const EdgeInsets.symmetric(vertical: 5),
                   alignment: Alignment.center,
                   child: Text("View All",
                   style: TextStyle(
                     fontSize: 20,
                     color: MyColor.font_color,
                     decoration: TextDecoration.underline,
                   ),
                   ),
                 ),
                 Container(
                   padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                   child: Text("Availble Cars",style: TextStyle(
                       color: MyColor.font_color,
                       fontSize: 20
                   ),),

                 ),
                  CarCardGrid(cardCount: 2,),
                 Container(
                   padding: const EdgeInsets.symmetric(vertical: 5),
                   alignment: Alignment.center,
                   child: Text("View All",
                     style: TextStyle(
                       fontSize: 20,
                       color: MyColor.font_color,
                       decoration: TextDecoration.underline,
                     ),
                   ),
                 ),
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
