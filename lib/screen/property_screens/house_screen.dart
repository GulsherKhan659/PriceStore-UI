import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/drawer_controller.dart';
import 'package:pricestore/modals/property_modal.dart';
import 'package:pricestore/screen/widgets/background.dart';
import 'package:pricestore/screen/widgets/image_card.dart';
import 'package:pricestore/utils/msg_method.dart';
// Custom Import
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';
import '/screen/widgets/floating_button.dart';
import '/screen/widgets/home_icons.dart';

class HouseScreen extends StatelessWidget {
  HouseScreen(
      {Key? key, required this.propertyModel, required this.phoneNumber})
      : super(key: key);
  PropertyBeanClass propertyModel;
  String phoneNumber;

  RDrawerController _rDrawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 20;
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.housescreenscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.housescreenscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(8),
                    child: Text(
                      "${propertyModel.title}",
                      style: TextStyle(
                          fontSize: 25,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: MyColor.font_color),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style:
                                        TextStyle(color: MyColor.other_color),
                                    children: [
                                  TextSpan(
                                    text: "PKR ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: " ${propertyModel.price}",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ])),
                            Text(
                              "${propertyModel.location},${propertyModel.city}",
                              style: TextStyle(
                                  height: 1.2,
                                  fontSize: 17,
                                  color: MyColor.font_color),
                            ),
                            Text(
                              "${propertyModel.location},${propertyModel.city}",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  height: 1.2,
                                  color: MyColor.icon_color),
                            ),
                            Text(
                              "Posted Date : ${propertyModel.adPostDate}",
                              style: TextStyle(
                                  fontSize: 11,
                                  height: 1.2,
                                  color: MyColor.font_color),
                            ),
                            Text(
                              "Key Feature :",
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.8,
                                  fontWeight: FontWeight.bold,
                                  color: MyColor.font_color),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              child: Column(
                                children: [
                                  HomeIcon(
                                    isCard: false,
                                    cardicon: Icons.king_bed_outlined,
                                    cardtitle:
                                        "${propertyModel.n_bedroom} Bedroom",
                                  ),
                                  HomeIcon(
                                      isCard: false,
                                      cardicon: Icons.bathtub,
                                      cardtitle:
                                          "${propertyModel.n_bathroom} Washroom"),
                                  HomeIcon(
                                      isCard: false,
                                      cardicon: Icons.garage,
                                      cardtitle: "Garage"),
                                  HomeIcon(
                                      isCard: false,
                                      cardicon: Icons.weekend,
                                      cardtitle: "Lawn"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ///////
                        Wrap(
                          children: propertyModel.ad_images!
                              .map((e) => ImageCard(
                                    image: e,
                                    width: width,
                                  ))
                              .toList(),
                        ),
                        //  HouseCard(),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${propertyModel.description}",
                          style: TextStyle(color: MyColor.font_color),
                        ),

                        ///////
                      ],
                    ),
                  ),

                  ////////Add email and call
                ],
              ),
            ),
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
                        child: GestureDetector(
                          onTap: () {
                            MsgMethod.doCall(number: "$phoneNumber");
                          },
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
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: GestureDetector(
                          onTap: () {
                            MsgMethod.doWhatsapp(
                                number: "$phoneNumber",
                                msg: "${propertyModel.title}");
                          },
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

//
// class HouseCard extends StatelessWidget {
//   const HouseCard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//             flex: 1,
//             child: Container(
//               height:120,
//               margin: const EdgeInsets.all(6),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(15),
//                image: DecorationImage(
//                  image: AssetImage("assets/property1.jpg"),
//                  fit: BoxFit.cover
//                ),
//                  color: Colors.red
//
//              ),
//             ),),
//         Expanded(
//           flex: 1,
//           child: Container(
//             height:120,
//             margin: const EdgeInsets.all(6),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                     image: AssetImage("assets/property1.jpg"),
//                     fit: BoxFit.cover
//                 ),
//                 color: Colors.red
//
//             ),
//           ),),
//         Expanded(
//           flex: 1,
//           child: Container(
//             height:120,
//             margin: const EdgeInsets.all(6),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                     image: AssetImage("assets/property1.jpg"),
//                     fit: BoxFit.cover
//                 ),
//                 color: Colors.red
//
//             ),
//           ),),
//       ],
//     );
//   }
// }
