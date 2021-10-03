import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pricestore/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
import '/screen/widgets/footer_icon.dart';
class PhaseScreen extends StatelessWidget {
  const PhaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:MyAppBar(context),
      backgroundColor: MyColor.backgroud_primary_color,
      body: LayoutBuilder(
          builder: (context,constraint){
            return Column(
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
                                      "Bahria Phase 1-6",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                CustomRow(number: "1"),
                                CustomRow(number: "2"),
                                CustomRow(number: "3"),
                                CustomRow(number: "4"),
                                CustomRow(number: "5"),
                                CustomRow(number: "6"),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Footer(),
              ],
            );
          }
      ),

    );
  }
}
class CustomRow extends StatelessWidget {
  CustomRow({Key? key,required this.number}) : super(key: key);
  String number;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child:Text("Baharia Phase $number" ,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          ),),
          Expanded(flex: 1, child: Container(
            child: Icon(Icons.chevron_right),
          ),),
        ],
      ),
    );
  }
}