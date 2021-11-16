import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pricestore/modals/vehicle_modal.dart';
import 'package:pricestore/screen/car_screens/car_screen.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/route_name.dart';

class CarCard extends StatelessWidget {
   CarCard({Key? key,required this.vehicleBeanClass}) : super(key: key);
  VehicleBeanClass? vehicleBeanClass;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(CarScreen(vehicleBeanClass:vehicleBeanClass)),
      child: Container(
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        //  color: MyColor.backgroud_secondary_color
                      ),
                      child: Image(image: NetworkImage("${vehicleBeanClass!.cover_image}",),fit: BoxFit.fill),
                    ),
                    Text("${vehicleBeanClass!.model}",style: TextStyle(
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
                              text: "${vehicleBeanClass!.price}",style: TextStyle(
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
      ),
    );
  }
}
