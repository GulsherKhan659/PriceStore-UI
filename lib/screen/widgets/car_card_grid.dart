import 'package:flutter/material.dart';
import 'package:pricestore/utils/colors.dart';
class CarCardGrid extends StatelessWidget {
   int cardCount;
   CarCardGrid({Key? key,required this.cardCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

        child:Row(children: [
           Expanded(
               flex: 1,
               child:cardCount == 2 ? Column(
                 children:
                 [
                   CarCard(image:"assets/car2.png"),
                   CarCard(image:"assets/car3.png"),
                   SizedBox(
                     height: 60,
                   ),
                 ],
               ):Column(
                 children:
                 [
                   CarCard(image:"assets/car2.png"),
                   CarCard(image:"assets/car1.png"),
                   CarCard(image:"assets/car4.png"),
                   CarCard(image:"assets/car3.png"),
                   CarCard(image:"assets/car1.png"),
                   CarCard(image:"assets/car4.png"),
                   SizedBox(
                     height: 60,
                   ),
                 ],
               ),
           ),
          Expanded(
              flex: 1,
            child:cardCount == 2? Column(
              children: [
                SizedBox(
                  height: 60,

                ),
                CarCard(image:"assets/car1.png"),
                CarCard(image:"assets/car4.png"),


              ],
            ): Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                CarCard(image:"assets/car1.png"),
                CarCard(image:"assets/car2.png"),
                CarCard(image:"assets/car1.png"),
                CarCard(image:"assets/car4.png"),
                CarCard(image:"assets/car2.png"),
                CarCard(image:"assets/car1.png"),


              ],
            ),
          ),

        ],)
    );
  }
}


class CarCard extends StatelessWidget {
   CarCard({Key? key,required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColor.backgroud_secondary_color
      ),
       // height: 280,
        width: double.infinity,
        child:Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    child: Image(image: AssetImage(image),fit: BoxFit.contain,),
                  ),
                  Text("Modal Name",style: TextStyle(
                    color: MyColor.font_color,
                    fontSize: 12,
                  ),),
                  RichText(text: TextSpan(
                      style: TextStyle(
                          color: MyColor.other_color
                      ),
                      children: [
                        TextSpan(
                            text: "PKR ",
                            style: TextStyle(
                                fontSize: 12
                            )
                        ),
                        TextSpan(
                            text: " 1 Crore",style: TextStyle(
                            fontSize: 22
                        )
                        ),
                      ]
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Comapare",style: TextStyle(
                        color: MyColor.other_color,
                      ),),
                      Text("Feedback",style: TextStyle(
                        color: MyColor.other_color,
                      ),),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    thickness: 1.2,
                    height: 2,
                    color: MyColor.other_color,
                  ),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone,color: MyColor.other_color,),
                          Text("Call",style: TextStyle(
                            color: MyColor.other_color,
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail_outline,color: MyColor.other_color,),
                          Text("Mail",style: TextStyle(
                            color: MyColor.other_color,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border,color: Colors.black,),
              ),
            ),
          ],
        )
    );
  }
}
