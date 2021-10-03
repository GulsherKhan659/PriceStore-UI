import 'package:flutter/material.dart';
// Custom Import
import '/utils/footer.dart';
import '/utils/app_bar.dart';
import '/utils/colors.dart';
class FindPlace extends StatelessWidget {
  const FindPlace({Key? key}) : super(key: key);

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

                                CustomRow(text: "Baharia Phase 1-6"),
                                CustomRow(text:"Baharia Phase 7-8"),
                                CustomRow(text:"Baharia Enclusive"),
                                CustomRow(text:"Gulberg Green")
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
  CustomRow({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
            child:Text(text,style: TextStyle(
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

