import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/modals/vehicle_modal.dart';
import 'package:pricestore/screen/widgets/image_card.dart';
import '/controllers/drawer_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/floating_button.dart';
import '/screen/widgets/home_icons.dart';
import '/utils/drawer.dart';
// Custom Import
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';

class CarScreen extends StatelessWidget {
  CarScreen({Key? key, required this.vehicleBeanClass}) : super(key: key);
  VehicleBeanClass? vehicleBeanClass;
  RDrawerController _rDrawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 20;
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.carscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.carscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(8),
                    child: Text(
                      "${vehicleBeanClass!.title}",
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 25,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                        color: MyColor.font_color,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: TextStyle(color: MyColor.other_color),
                                children: [
                              TextSpan(
                                text: "PKR ",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text: "${vehicleBeanClass!.price}",
                                style: TextStyle(fontSize: 26),
                              ),
                            ])),
                        Text(
                          "Model :${vehicleBeanClass!.model}",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 15,
                              color: MyColor.font_color),
                        ),
                        Text(
                          "Mileage :${vehicleBeanClass!.mileage}",
                          style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: MyColor.icon_color),
                        ),
                        Text(
                          "Year :${vehicleBeanClass!.year}",
                          style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color: MyColor.font_color),
                        ),
                        Text(
                          "Condition :${vehicleBeanClass!.condition}",
                          style: TextStyle(
                              fontSize: 14,
                              height: 2,
                              fontWeight: FontWeight.bold,
                              color: MyColor.font_color),
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          children: vehicleBeanClass!.ad_images!
                              .map(
                                (e) => ImageCard(
                                  width: width,
                                  image: e,
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${vehicleBeanClass!.description}",
                          style: TextStyle(color: MyColor.font_color),
                        )
                      ],
                    ),
                  ),

//                    Spacer(),

                  // SizedBox(height: 10,),

                  ////////Add email and call
                ],
              ),
            ),
            //SizedBox(height:30),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Icon(Icons.call),
                            Text(
                              "Call",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Icon(Icons.mail),
                            Text(
                              "Whatsapp",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}


// class CarCard extends StatelessWidget {
//    CarCard({Key? key,required this.image,required this.width}) : super(key: key);
//  double width;
//  String image;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:120,
//       width:width/3.5,
//       margin: const EdgeInsets.all(6),
//       decoration: BoxDecoration(
//         boxShadow: [BoxShadow(spreadRadius: 0.5,color: Colors.white.withOpacity(0.5),blurRadius: 1.2)],
//           borderRadius: BorderRadius.circular(15),
//           image: DecorationImage(
//               image: NetworkImage("$image"),
//               fit: BoxFit.fill
//           ),
//           color: MyColor.backgroud_secondary_color
//
//       ),
//     );
//   }
// }
