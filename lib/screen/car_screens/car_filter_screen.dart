import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Custom Import
import '/controllers/drawer_controller.dart';
import '/controllers/vechical_data_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/floating_button.dart';
import '/screen/widgets/half_drop_down_list.dart';
import '/screen/widgets/icon_w.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';
import '/utils/filters_list.dart';
import '/utils/footer.dart';
import '/utils/route_name.dart';

class CarFilterScreen extends StatelessWidget {
  CarFilterScreen({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  VehicalDataController _vDataController = Get.find();
  @override
  Widget build(BuildContext context) {
    List brandList = ["toyota", "honda", "kia", "hyundai", "nissan", "other"];
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.carfilterscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.carfilterscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Filter",
                      style: TextStyle(
                          color: MyColor.font_color,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Brands",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: 100,
                    child: ListView.builder(
                        itemCount: brandList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (c, i) {
                          return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: IconW(
                                  brandName: brandList[i],
                                  function: _vDataController.brandsName));
                        }),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Price Range",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyColor.font_color,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 14),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        HalfDropDown(
                          optionList: FilterList.MIN,
                          hintText: "Min",
                          function: _vDataController.setMin,
                        ),
                        HalfDropDown(
                          optionList: FilterList.MAX,
                          hintText: "Max",
                          function: _vDataController.setMax,
                        ),
                      ],
                    ),
                  ),
                  // Container for apply Box
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: MyColor.backgroud_secondary_color),
                      onPressed: () {
                        Get.toNamed(RouteName.SearchCarRoute);
                        _vDataController.carFilter();
                      },
                      child: Text("Apply"),
                    ),
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
