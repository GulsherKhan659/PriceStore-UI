import 'package:flutter/material.dart';
import 'package:pricestore/utils/route_name.dart';
import '/utils/colors.dart';
import 'home_icons.dart';
class PropertyCard extends StatelessWidget {
  PropertyCard({Key? key,required this.constraint,required this.image,required this.favouriteIcon}) : super(key: key);
  BoxConstraints constraint;
  bool favouriteIcon;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.of(context).pushNamed(RouteName.HouseRoute),
      child: Container(
        height: 280,
        width: constraint.maxWidth,
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
        child: Card(
          color: MyColor.backgroud_secondary_color,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "House For Sale",style: TextStyle(
                              fontSize: 16,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              color: MyColor.font_color
                          ),
                          ),
                        ),
                        RichText(text: TextSpan(
                            style: TextStyle(
                                color: MyColor.other_color
                            ),
                            children: [
                              TextSpan(
                                  text: "PKR "
                              ),
                              TextSpan(
                                  text: " 2.1 Crore",style: TextStyle(
                                  fontSize: 24
                              )
                              ),
                            ]
                        )),
                        Text("G-13/1,Islamabad",style: TextStyle(
                            height: 1.2,
                            color: MyColor.font_color
                        ),),
                        Text("5 Marla House in G-13/1,Islamabad",style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 9,
                            height: 1.2,
                            color: MyColor.icon_color
                        ),),
                        Text("Posted By Ali on 30 Jan,21",style: TextStyle(
                            fontSize: 10,
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
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [

                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(image,),
                        fit: BoxFit.fill,
                      ),),
                    favouriteIcon ? Container(
                      alignment: Alignment.topRight,
                      child:CircleAvatar(
                        backgroundColor: MyColor.backgroud_primary_color,
                        child: Icon(Icons.favorite_border,color: MyColor.icon_color,)
                        ,),
                    ):Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
