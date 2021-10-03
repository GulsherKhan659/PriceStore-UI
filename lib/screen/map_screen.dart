import 'package:flutter/material.dart';
import 'package:pricestore/utils/app_bar.dart';
import 'package:pricestore/utils/colors.dart';
import 'package:pricestore/utils/footer.dart';
class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

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
                  child:Container(

                    child: Image(image:AssetImage("assets/map.jpg"),fit: BoxFit.fill,),
                  ),
                ),
                Footer(),
              ],
            );
          }
      ),

    );;
  }
}
