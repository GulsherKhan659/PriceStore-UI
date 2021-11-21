import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Custom Import
import '/screen/widgets/car_card_grid.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/footer.dart';
import '/utils/drawer.dart';
import '/controllers/drawer_controller.dart';
import '/controllers/vechical_data_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/floating_button.dart';
import '/utils/route_name.dart';

class FindCarScreen extends StatelessWidget {
  FindCarScreen({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  VehicalDataController _vDataController = Get.put(VehicalDataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.findcarscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.findcarscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    height: 400,
                    child: Stack(
                      children: [
                        Container(
                          height: 280,
                          width: double.infinity,
                          child: Image(
                            image: AssetImage("assets/car2.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 140, bottom: 10),
                            alignment: Alignment.center,
                            width: 220,
                            child: Center(
                              child: Text(
                                "Find Your Dream Car",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: MyColor.font_color),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 310),
                          margin: const EdgeInsets.symmetric(horizontal: 45),
                          child: Text(
                            " variations of passages of Lorem Ipsum available,"
                            " but the majority have suffered alteration in some form,"
                            "If you are going to use a passage of "
                            "Lorem Ipsum",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: MyColor.font_color),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Avalible Cars ",
                          style: TextStyle(
                              color: MyColor.font_color, fontSize: 22),
                        ),
                        Container(
                            width: 30,
                            height: 30,
                            //color: Colors.white70,
                            child: GestureDetector(
                                onTap: () =>
                                    Get.toNamed(RouteName.CarFilterScreenRoute),
                                child: Image(
                                  image: AssetImage('assets/w_filter.png'),
                                )))
                      ],
                    ),
                  ),
                  Obx(
                    () => _vDataController.vehicalList.isEmpty
                        ? Container(
                            width: 50,
                            height: 120,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: Colors.white,
                            )))
                        : GridView.builder(
                            shrinkWrap: true,
                            itemCount: _vDataController.vehicalList.length,
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
                                    _vDataController.vehicalList[index],
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
