import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricestore/controllers/propety_data_controller.dart';
import 'package:pricestore/utils/filters_list.dart';

class HalfDropDown extends StatelessWidget {
   HalfDropDown({Key? key,required this.optionList,required this.hintText,required this.function}) : super(key: key);
  List<String> optionList;
   String hintText;
    Function function;
 //PropertyDataController _pdataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownSearch<String>(
          mode: Mode.MENU,

          //enabled: ,
          // showSelectedItem: true,
          items: optionList,
          popupSafeArea: PopupSafeAreaProps(),
          dropdownSearchDecoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,

            contentPadding: const EdgeInsets.all(0),

          ),
          onChanged: (String? newValue)=>function(newValue),
          //selectedItem: FilterList.MIN[0]
      ),
    );
}
   }
