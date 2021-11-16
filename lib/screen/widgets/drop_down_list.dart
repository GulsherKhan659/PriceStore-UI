import 'package:flutter/material.dart';
import '/utils/colors.dart';

////////////////Another Widget
class FieldDropDown extends StatelessWidget {
  FieldDropDown({Key? key,required this.label,required this.dropDown}) : super(key: key);
  String label;
  Widget dropDown;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.topLeft,
          child: Text(label,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MyColor.font_color,
          ),),
        ),
        SizedBox(height: 5,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(6)
          ),
          child: Row(children:[dropDown]),
        ),
      ],
    );
  }
}

