import 'package:get/get.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_properties.dart';
import 'package:pricestore/modals/property_modal.dart';

class PropertyDataController extends GetxController{
  RxList<PropertyBeanClass> _propertyList =<PropertyBeanClass>[].obs;
  List<PropertyBeanClass> get propertyList => _propertyList.value;

  RxList<PropertyBeanClass> _filterPropertyList =<PropertyBeanClass>[].obs;
  List<PropertyBeanClass> get filterPropertyList => _filterPropertyList.value;


  String? _min;
  String? _max;
  String? _propType;
  String? _city;
  RxInt _noBathroom = 1.obs;
  int get noBathroom => _noBathroom.value;
  setNoBathroom(int n)=>_noBathroom.value = n;

  RxInt _noBedroom = 1.obs;
  int get noBedroom => _noBedroom.value;
  setNoBedroom(int n)=>_noBedroom.value = n;

  RxBool _isBuySelected=true.obs;
  bool get isBuySelected=>_isBuySelected.value;
  setIsBuySelected({bool? isBuy}){
    switch(isBuy){
      case true: _isBuySelected.value= true;

                    break;
      case false: _isBuySelected.value= false;

                     break;
    }
  }
  void setMin(String? value){
  _min=value;

  }
  setMax(String? value){
    _max=value;
  }
  setPropType(String? value){
    _propType=value;
  }
  setCity(String? value){
    _city=value;
 }

   propertyFilter(){
  _filterPropertyList.bindStream(FetchProperties.FilteredProperty( city:"Islamabad", min: 0, max: 10000000000, property_type: "residential", isBuy: "true", n_bath: "2", n_bedroom:"3")!);
    if(_propType == null && _city == null)
      return;
    print(""""  noBathroom: $_noBathroom
                noBedroom: $_noBedroom
                isBuySelected : $_isBuySelected
                min: $_min
                max: $_max
                propType:$_propType
                city: $_city
                location:""");
   }

  @override
  void onInit() {
    // TODO: implement onInit
    ///Stream To get all property
    _propertyList.bindStream(FetchProperties.allProperties()!);
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _propertyList.close();///_propertyList Stream is Close
    super.dispose();
  }
}