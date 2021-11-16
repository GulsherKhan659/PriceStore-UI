import 'package:get/get.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_properties.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_vehicals.dart';
import 'package:pricestore/modals/property_modal.dart';
import 'package:pricestore/modals/vehicle_modal.dart';

class FetchData extends GetxController{
  /// List to get Property Show in HomeScreen
RxList<PropertyBeanClass> _propertyHomeList =<PropertyBeanClass>[].obs;
List<PropertyBeanClass> get propertyHomeList => _propertyHomeList.value;
/// List to get Vechile Show in HomeScreen
RxList<VehicleBeanClass> _vehicalHomeList =<VehicleBeanClass>[].obs;
List<VehicleBeanClass> get vehicalList => _vehicalHomeList.value;
@override
  void onInit() {
    // TODO: implement onInit
  ///Stream To get Random 3 property in HomeScreen
  _propertyHomeList.bindStream(FetchProperties.homeProperties()!);
  ///Stream To get Random 4 Vehicle in HomeScreen
  _vehicalHomeList.bindStream(FetchVehicals.homeVehiles()!);
  super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
     _propertyHomeList.close();///_propertyHomeList Stream is Close
     _vehicalHomeList.close();///_vehicalHomeList Stream is Close
    super.dispose();
  }

}