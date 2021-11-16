import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/drawer_controller.dart';
import '/controllers/propety_data_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/half_drop_down_list.dart';
import '/utils/filters_list.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '/utils/footer.dart';
import '/utils/app_bar.dart';
import 'package:pricestore/utils/route_name.dart';
import '/utils/colors.dart';
import '/utils/drawer.dart';
import '/screen/widgets/drop_down_list.dart';
import '/screen/widgets/floating_button.dart';
import '/screen/widgets/small_buttons.dart';

class ProperyFilterScreen extends StatelessWidget {
   ProperyFilterScreen({Key? key}) : super(key: key);
  RDrawerController  _rDrawerController = Get.find();
  PropertyDataController _pDataController = Get.find();
  @override
  Widget build(BuildContext context) {

   // List<String> _locations = ['A', 'B', 'C', 'D'];
    return Scaffold(
      appBar: MyAppBar(_rDrawerController.propertyfilterscaffoldkey),
      endDrawer: CustomDrawer(),
      key: _rDrawerController.propertyfilterscaffoldkey,
      floatingActionButton:FAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:  AppBg(
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Expanded(child:Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: ListView(children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text("Filters",style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: MyColor.font_color,
                        ),),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                         Obx(()=>CustomIconBuyAndRent(isBuySelected:_pDataController.isBuySelected,isBuy: true,)),
                         Obx(()=>CustomIconBuyAndRent(isBuySelected:!_pDataController.isBuySelected,isBuy: false)),
                        ],),
                      ),
                    FieldDropDown(label:"City",dropDown: HalfDropDown(optionList: FilterList.CITY,hintText: "Select City",function: _pDataController.setCity,),),
                  //  FieldDropDown(label:"Location",dropDown: HalfDropDown(optionList: FilterList.ISL_LOC,hintText: "Select Location",function: _pDataController.setLocation,)),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.topLeft,
                            child: Text("Price Range",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: MyColor.font_color,
                            ),),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child:Row(
                              children: [
                                HalfDropDown(optionList: FilterList.MIN,hintText: "Min",function: _pDataController.setMin,),

                                HalfDropDown(optionList: FilterList.MAX,hintText: "Max",function: _pDataController.setMax,),
                                // Expanded(
                                //   flex: 1,
                                //   child:GetBuilder<PropertyDataController>(
                                //
                                //       builder: (_pdataController) {
                                //         return DropdownButton(
                                //           hint: Text('Min'), // Not necessary for Option 1
                                //           value: _pdataController.min==null ?_pdataController.min :"xzc",
                                //           onChanged: (String? newValue) =>
                                //               _pdataController.setSelected(value: newValue),
                                //           items: FilterList.MIN.map((location) {
                                //             return DropdownMenuItem(
                                //               child: new Text(location),
                                //               value: location,
                                //             );
                                //           }).toList(),
                                //           isExpanded: true,
                                //           isDense: true,
                                //
                                //         );
                                //       }
                                //   ),
                                // ),
                               // HalfDropDown(hintTitle: "Min",optionList: ['0','10000','100000','1000000'],rxString: _propertyDataController.min! ),
                            //  HalfDropDown(hintTitle: "Max",optionList: ['10000','100000','1000000','Unlimited'],rxString: _propertyDataController.max!),

                              ],
                            ),
                          ),
                          FieldDropDown(label:"Property Type",
                            dropDown: HalfDropDown(optionList: FilterList.PROPERT_TYPE,hintText: "Select Property Type",function: _pDataController.setPropType,),),
                        //  SmallSquareButton(label: "Bedroom"),
                          Obx (()=> SmallSquareButton(label: "Bedrooom",selected: _pDataController.noBedroom,function:_pDataController.setNoBedroom,)),

                          Obx (()=> SmallSquareButton(label: "Bathroom",selected: _pDataController.noBathroom,function:_pDataController.setNoBathroom,)),
                          SizedBox(
                            height: 5,
                          ),

                          Container(
                            width: 100,
                            child: ElevatedButton(

                              style:ElevatedButton.styleFrom(
                                primary: MyColor.backgroud_secondary_color
                              ),
                              onPressed: (){Get.toNamed(RouteName.PropertyRoute);
                              _pDataController.propertyFilter();

                              },//Get.toNamed(RouteName.PropertyRoute),
                              child: Container(
                                padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                                child: Text("Apply"),
                              ),
                            ),
                          ),
                          SizedBox(height:35,)
                        ],
                      )
                    ],),
                  )),
                  Footer(),
                ],
              ),
      ),

    );
  }
}



//////////// Custom Icon Buy And Rent
class CustomIconBuyAndRent extends StatelessWidget {
   CustomIconBuyAndRent({Key? key,required this.isBuy ,required this.isBuySelected}) : super(key: key);
  bool isBuy;
  bool isBuySelected;

 PropertyDataController _propertyDataController = Get.find();

   @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:()=>
        _propertyDataController.setIsBuySelected(isBuy: isBuy),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: MyColor.font_color,
            child:Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Image(image:AssetImage(isBuy?"assets/buy.png":"assets/rent.png"),fit: BoxFit.fitWidth,)) ,

            radius: isBuySelected ? 32:35,
          ),
          SizedBox(height: 5),
          Text(isBuy?"Buy":"Rent",style: TextStyle(
              fontSize: 16,
              color: MyColor.option_select_color,
              fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }
}

