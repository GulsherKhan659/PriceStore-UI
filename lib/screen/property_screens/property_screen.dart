import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/propety_data_controller.dart';
import 'package:pricestore/screen/widgets/property_card.dart';
import '/controllers/drawer_controller.dart';
import '/screen/widgets/background.dart';
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';
import '/screen/widgets/floating_button.dart';

class PropertyScreen extends StatelessWidget {
  PropertyScreen({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  PropertyDataController _propertyController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.propertyscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.propertyscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Text(
                  "Availble Properties",
                  style: TextStyle(color: MyColor.font_color, fontSize: 20),
                ),
              ),

              ////
              Container(
                color: Colors.white70,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        "${_propertyController.filterPropertyList.length} Resualt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Sort by : Defualt order",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ],
                ),
              ),
              Obx(() => Expanded(
                    child: _propertyController.filterPropertyList.isEmpty
                        ? _propertyController.isNoAds.value
                            ? Center(
                                child: Text(
                                  "No Ads Found",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : Center(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                                _propertyController.filterPropertyList.length,
                            itemBuilder: (context, index) {
                              return PropertyCard(
                                  constraint: constraint,
                                  favouriteIcon: true,
                                  propertyBeanClass: _propertyController
                                      .filterPropertyList[index]);
                            }),
                  )),
              Footer(),
            ],
          );
        }),
      ),
    );
  }
}
