import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/drawer_controller.dart';
import '/screen/map_screens/map_screen.dart';
import '/screen/widgets/background.dart';
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/drawer.dart';
import '/screen/widgets/floating_button.dart';

class PhaseScreen extends StatelessWidget {
   PhaseScreen({Key? key,required this.numberList,required this.title}) : super(key: key);
   List<String> numberList;
   String title;
   RDrawerController  _rDrawerController = Get.find();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: MyAppBar(_rDrawerController.phasescreenscaffoldkey),
       endDrawer: CustomDrawer(),
       key: _rDrawerController.phasescreenscaffoldkey,
      floatingActionButton:FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body:  AppBg(
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  
                  Expanded(
                    child: Column(
                      children: [
                        SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20, bottom: 20),
                                      child: Text(
                                        "Find Your Perfect Place",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 20, bottom: 10),
                                      child: Text(
                                        "$title ${numberList[0]}-${numberList[5]}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),

                                  CustomRow(number: numberList[0],title: title,image: "assets/s1.jpg",),
                                  CustomRow(number: numberList[1],title: title,image: "assets/s2.jpg",),
                                  CustomRow(number: numberList[2],title: title,image: "assets/s3.jpg",),
                                  CustomRow(number: numberList[3],title: title,image: "assets/s4.jpg",),
                                  CustomRow(number: numberList[4],title: title,image: "assets/b_green.jpg",),
                                  CustomRow(number: numberList[5],title: title,image: "assets/g_city.jpg",),
                                ],
                              ),
                            ))
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
class CustomRow extends StatelessWidget {
  CustomRow({Key? key,required this.number,required this.title,required this.image}) : super(key: key);
  String number;
  String title;
  String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> Get.to(MapScreen(image:image,)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(

          color: Colors.grey.shade400,
          borderRadius:BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: Container(),),
            Expanded(flex: 4, child: Container(
              alignment: Alignment.center,
              child:Text("$title $number" ,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
            ),),
            Expanded(flex: 1, child: Container(
              child: Icon(Icons.chevron_right),
            ),),
          ],
        ),
      ),
    );
  }
}