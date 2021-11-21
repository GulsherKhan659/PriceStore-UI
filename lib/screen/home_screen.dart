import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/drawer_controller.dart';
import '/controllers/fetchHomeScreen_data_controller.dart';
import '/screen/widgets/background.dart';
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/screen/widgets/car_card_grid.dart';
import '/screen/widgets/property_card.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';
import '/screen/widgets/floating_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  RDrawerController _rDrawerController = Get.find();
  FetchData _fetchData = Get.put(FetchData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.homescreenscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.homescreenscaffoldkey,
      floatingActionButton: FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: AppBg(
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            children: [
              Center(
                child: Text(
                  "Welcome To PriceStore",
                  style: TextStyle(
                      color: MyColor.font_color, fontSize: 28, height: 2.4),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      child: Text(
                        "Availble Properties",
                        style:
                            TextStyle(color: MyColor.font_color, fontSize: 20),
                      ),
                    ),
                    Obx(
                      () => _fetchData.propertyHomeList.isEmpty
                          ? Container(
                              width: 50,
                              height: 120,
                              child: Center(
                                  child: CircularProgressIndicator(
                                color: Colors.white,
                              )))
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: _fetchData.propertyHomeList.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, i) {
                                return PropertyCard(
                                  constraint: constraint,
                                  favouriteIcon: false,
                                  propertyBeanClass:
                                      _fetchData.propertyHomeList[i],
                                );
                              }),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      child: Text(
                        "Availble Cars",
                        style:
                            TextStyle(color: MyColor.font_color, fontSize: 20),
                      ),
                    ),
                    Obx(
                      () => _fetchData.vehicalList.isEmpty
                          ? Container(
                              width: 50,
                              height: 120,
                              child: Center(
                                  child: CircularProgressIndicator(
                                color: Colors.white,
                              )))
                          : GridView.builder(
                              shrinkWrap: true,
                              itemCount: _fetchData.vehicalList.length,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 1,
                                      crossAxisSpacing: 1,
                                      mainAxisExtent: 280),
                              itemBuilder: (context, index) {
                                if (_fetchData
                                    .vehicalList[index].ad_images!.isEmpty)
                                  return Container(
                                    child: CircularProgressIndicator(),
                                  );
                                return CarCard(
                                  vehicleBeanClass:
                                      _fetchData.vehicalList[index],
                                );
                              }),
                    ),
                    //  CarCardGrid(cardCount: 2,),
                  ],
                ),
              ),
              Footer(),
            ],
          );
        }),
      ),
    );
  }
}
