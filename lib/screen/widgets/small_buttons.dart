
import 'package:flutter/material.dart';
import '/utils/colors.dart';

//// Icon Button for BedRooms And BathRooms
class SmallSquareButton extends StatelessWidget {
  SmallSquareButton({Key? key, required this.label,required this.selected,required this.function}) : super(key: key);
  String label;
  int selected;
  Function function;
  List number = [1,2,3,4,5,6];
  List number2 = [7,8,9,10,11,12];
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
        Row(
          children: number.map((e)=>
              Expanded(
                child: InkWell(
                  onTap: (){
                    function(e);
                  },
                  child: Container(
                    child: Text("$e",textAlign: TextAlign.center,),
                    padding: const EdgeInsets.all(6),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:e==selected? MyColor.icon_color: MyColor.option_select_color,
                    ),
                  ),
                ),
              )
          ).toList(),
        ),
        Row(
          children: number2.map((e)=>
              Expanded(
                child: InkWell(
                  onTap: (){
                    function(e);
                  },
                  child: Container(
                    child: Text("$e",textAlign: TextAlign.center,),
                    padding: const EdgeInsets.all(6),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:e==selected? MyColor.icon_color: MyColor.option_select_color,
                    ),
                  ),
                ),
              )
          ).toList(),
        ),
      ],
    );
  }
}

