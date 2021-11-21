import 'package:get/get.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_properties.dart';
import 'package:pricestore/modals/property_modal.dart';

class PropertyDataController extends GetxController {
  RxList<PropertyBeanClass> _propertyList = <PropertyBeanClass>[].obs;
  List<PropertyBeanClass> get propertyList => _propertyList.value;

  RxList<PropertyBeanClass> _filterPropertyList = <PropertyBeanClass>[].obs;
  List<PropertyBeanClass> get filterPropertyList => _filterPropertyList.value;

  String? _min;
  String? _max;
  String? _propType;
  String? _city;
  RxInt _noBathroom = 1.obs;
  int get noBathroom => _noBathroom.value;
  setNoBathroom(int n) => _noBathroom.value = n;

  RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  RxInt _noBedroom = 1.obs;
  int get noBedroom => _noBedroom.value;
  setNoBedroom(int n) => _noBedroom.value = n;

  RxBool _isBuySelected = true.obs;
  bool get isBuySelected => _isBuySelected.value;
  setIsBuySelected({bool? isBuy}) {
    switch (isBuy) {
      case true:
        _isBuySelected.value = true;

        break;
      case false:
        _isBuySelected.value = false;

        break;
    }
  }

  void setMin(String? value) {
    _min = value;
  }

  setMax(String? value) {
    _max = value;
  }

  setPropType(String? value) {
    _propType = value;
  }

  setCity(String? value) {
    _city = value;
  }

  RxBool isNoAds = false.obs;
  propertyFilter() async {
    isNoAds.value = false;
    final data = await FetchProperties.FilteredProperty(
        city: _city!,
        min: int.parse(_min!),
        max: int.parse(_max!),
        property_type: _propType!.toLowerCase(),
        isBuy: _isBuySelected.toString(),
        n_bath: _noBathroom.toString(),
        n_bedroom: _noBedroom.toString());

    _filterPropertyList.value = data;
    Future.delayed(Duration(milliseconds: 500), () => isNoAds.value = true);

    // if(_propType == null && _city == null)
    //   return;
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
    _propertyList.close();

    ///_propertyList Stream is Close
    super.dispose();
  }
}
