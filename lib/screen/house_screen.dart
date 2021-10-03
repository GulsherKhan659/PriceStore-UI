import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Custom Import
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import 'widgets/home_icons.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:MyAppBar(context),
      backgroundColor: MyColor.backgroud_primary_color,
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Expanded(
                  child:ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "House For Sale",style: TextStyle(
                            fontSize: 25,
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            color: MyColor.font_color
                        ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            RichText(text: TextSpan(
                                style: TextStyle(
                                    color: MyColor.other_color
                                ),
                                children: [
                                  TextSpan(
                                      text: "PKR ",style: TextStyle(
                                      fontSize: 16
                                  ),
                                  ),
                                  TextSpan(
                                      text: " 2.1 Crore",style: TextStyle(
                                      fontSize: 26
                                  ),
                                  ),
                                ]
                            )),
                            Text("G-13/1,Islamabad",style: TextStyle(
                                height: 1.2,
                                fontSize: 17,
                                color: MyColor.font_color
                            ),),
                            Text("5 Marla House in G-13/1,Islamabad",style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 13,
                                height: 1.2,
                                color: MyColor.icon_color
                            ),),
                            Text("Posted By Ali on 30 Jan,21",style: TextStyle(
                                fontSize: 11,
                                height: 1.2,
                                color: MyColor.font_color
                            ),),
                            Text("Key Feature :",style: TextStyle(
                                fontSize: 16,
                                height: 1.8,
                                fontWeight: FontWeight.bold,
                                color: MyColor.font_color
                            ),),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                              child: Column(
                                children: [
                                  HomeIcon(cardicon: Icons.king_bed_outlined,cardtitle: "5 Bedroom",),
                                  HomeIcon(cardicon: Icons.bathtub, cardtitle: "6 Washroom"),
                                  HomeIcon(cardicon: Icons.garage, cardtitle: "Garage"),
                                  HomeIcon(cardicon: Icons.weekend, cardtitle: "Lawn"),
                                ],
                              ),
                            ),
                           HouseCard(),
                          HouseCard(),
                            SizedBox(height: 5,),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing "
                                "elit,  exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                                "\nDuis aute irure dolor in reprehenderit \n asd fde adfsad  fddsd Excepteur sint occaecat cupidatat non proident"
                              ,style: TextStyle(
                                color: MyColor.font_color
                              ),)
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        color: Colors.grey,
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [

                          Row(children: [
                            Icon(Icons.call),
                            Text("Call",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                          ],),
                         Row(children: [
                           Icon(Icons.mail),
                           Text("Send Message",style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                           ),),
                         ],)
                        ],
                       ),
                      ),
                      SizedBox(height: 10,),

                      ////////Add email and call
                    ],
                  ),
                ),
                Footer(),
              ],

      ),

    );
  }
}


class HouseCard extends StatelessWidget {
  const HouseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height:120,
              margin: const EdgeInsets.all(6),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               image: DecorationImage(
                 image: AssetImage("assets/property1.jpg"),
                 fit: BoxFit.cover
               ),
                 color: Colors.red

             ),
            ),),
        Expanded(
          flex: 1,
          child: Container(
            height:120,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/property1.jpg"),
                    fit: BoxFit.cover
                ),
                color: Colors.red

            ),
          ),),
        Expanded(
          flex: 1,
          child: Container(
            height:120,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/property1.jpg"),
                    fit: BoxFit.cover
                ),
                color: Colors.red

            ),
          ),),
      ],
    );
  }
}
