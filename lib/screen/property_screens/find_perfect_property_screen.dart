import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/drawer_controller.dart';
import '/controllers/propety_data_controller.dart';
import '/screen/widgets/background.dart';
// Custom Import
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/footer.dart';
import '/utils/route_name.dart';

import '/utils/drawer.dart';
import '/screen/widgets/floating_button.dart';
import '/screen/widgets/property_card.dart';


class FindPerfectPlace extends StatelessWidget {
   FindPerfectPlace({Key? key}) : super(key: key);

  RDrawerController  _rDrawerController = Get.find();
  PropertyDataController _propertyData = Get.put(PropertyDataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.findpropertyscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.findpropertyscaffoldkey,
      floatingActionButton:FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: AppBg(
        child: LayoutBuilder(
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
                                 // color: Colors.white70,
                                  child: GestureDetector(
                                  onTap: ()=>Get.toNamed(RouteName.PropertyFilterScreenRoute)
                                  ,child: Image(image: AssetImage('assets/w_filter.png'),)))
                            ],
                          ),
                        ),
                        Obx(() => ListView.builder(
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _propertyData.propertyList.length,
                            itemBuilder: (context,index){
                          return PropertyCard(constraint: constraint, favouriteIcon: true, propertyBeanClass: _propertyData.propertyList[index]);
                        }))
                        // PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property2.jpg",favouriteIcon: true),
                        // PropertyCard(constraint: constraint, image: "assets/property1.jpg",favouriteIcon: true),
                      ],
                    ),
                  ),
                  Footer(),
                ],
              );
            }
        ),
      ),

    );
  }
}