import 'package:flutter/material.dart';
// Custom Import
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/footer.dart';
import 'package:pricestore/utils/route_name.dart';

import 'widgets/property_card.dart';


class FindPerfectPlace extends StatelessWidget {
  const FindPerfectPlace({Key? key}) : super(key: key);

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


                Expanded(
                  child: ListView(
                    children: [
                        Container(
                          height: 400,

                        child: Stack(
                          children: [
                            Container(
                              height: 280,
                              width: double.infinity,
                              child: Image(image: AssetImage("assets/hand.png"),fit: BoxFit.fitWidth,),
                            ),
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(top: 140, bottom: 10),
                                alignment: Alignment.center,
                                width: 220,
                                child: Center(
                                  child: Text("Find Your Perfect Place",textAlign: TextAlign.center,style:TextStyle(

                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: MyColor.font_color),),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 310),
                              margin: const EdgeInsets.symmetric(horizontal: 45),
                              child: Text(" variations of passages of Lorem Ipsum available,"
                                  " but the majority have suffered alteration in some form,"
                                  "If you are going to use a passage of "
                                  "Lorem Ipsum",textAlign: TextAlign.center,style: TextStyle(
                                color: MyColor.font_color
                              ),),
                            ),
                          ],
                        ),
                        ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Avalible Properties ",style: TextStyle(color: MyColor.font_color,fontSize: 22),),
                            Container(
                                width: 30,
                                height: 30,
                                color: Colors.white70,
                                child: GestureDetector(
                                onTap: ()=>Navigator.of(context).pushNamed(RouteName.FilterScreenRoute)
                                ,child: Image(image: AssetImage('assets/filter.png'),)))
                          ],
                        ),
                      ),

                      PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                      PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                    ],
                  ),
                ),
                Footer(),
              ],
            );
          }
      ),

    );
  }
}