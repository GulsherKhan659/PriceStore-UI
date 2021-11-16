import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screen/map_screens/phase_screen.dart';
import '/screen/widgets/floating_button.dart';
import '/controllers/drawer_controller.dart';
import '/screen/widgets/background.dart';
// Custom Import
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';

class FindPlace extends StatelessWidget {
  FindPlace({Key? key}) : super(key: key);
  RDrawerController  _rDrawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.findplacescaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.findplacescaffoldkey,
      floatingActionButton:FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: AppBg(
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
                                          top: 20, left: 20, bottom: 30),
                                      child: Text(
                                        "Find Your Perfect Place",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: MyColor.font_color),
                                      ),
                                    ),
                                  ),

                                  CustomRow(text: "Baharia Phase",listNumber: ["1","2","3","4","5","6"],),
                                  CustomRow(text:"Baharia Phase",listNumber: ["7","8","9","10","11","12"]),
                                  CustomRow(text:"Baharia Enclusive",listNumber: ["1","2","3","4","5","6"]),
                                  CustomRow(text:"Gulberg Green",listNumber: ["1","2","3","4","5","6"])
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
  CustomRow({Key? key,required this.text,required this.listNumber}) : super(key: key);
  String text;
  List<String> listNumber;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(PhaseScreen(numberList: listNumber, title: text)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(

          color: Colors.grey.shade400,
          borderRadius:BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: Container(),),
            Expanded(flex: 5, child: Container(
              alignment: Alignment.center,
              child:Text("$text ${listNumber[0]}-${listNumber[5]}",style: TextStyle(
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

