import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/drawer_controller.dart';
import 'package:pricestore/controllers/vechical_data_controller.dart';
import 'package:pricestore/screen/widgets/background.dart';
import 'package:pricestore/screen/widgets/car_card_grid.dart';
import 'package:pricestore/screen/widgets/floating_button.dart';
import 'package:pricestore/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';

class SearchCar extends StatelessWidget {
  SearchCar({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  VehicalDataController _vDataController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.searchcarscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.searchcarscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Text(
                "All Availble Cars For Sale",
                style: TextStyle(color: MyColor.font_color, fontSize: 20),
              ),
            ),
            Container(
              color: Colors.white70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      "${_vDataController.filterVehicalList.length} Resualt",
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
            Expanded(
              child: ListView(
                children: [
                  Obx(
                    () => _vDataController.vehicalList.isEmpty
                        ? _vDataController.isNoAds.value
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
                        : GridView.builder(
                            shrinkWrap: true,
                            itemCount:
                                _vDataController.filterVehicalList.length,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 1,
                                    mainAxisExtent: 280),
                            itemBuilder: (context, index) {
                              return CarCard(
                                vehicleBeanClass:
                                    _vDataController.filterVehicalList[index],
                              );
                            }),
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
