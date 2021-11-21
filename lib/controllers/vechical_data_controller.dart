import 'package:get/get.dart';
import 'package:pricestore/firebase/fetch_and_upload/fetch_vehicals.dart';
import '/modals/vehicle_modal.dart';

class VehicalDataController extends GetxController {
  RxList<VehicleBeanClass> _vehicalList = <VehicleBeanClass>[].obs;
  List<VehicleBeanClass> get vehicalList => _vehicalList.value;
  RxList<VehicleBeanClass> _filterVehicalList = <VehicleBeanClass>[].obs;
  List<VehicleBeanClass> get filterVehicalList => _filterVehicalList.value;

  String? _min;
  String? _max;
  String? _brandsName;
  void setMin(String? value) {
    _min = value;
  }

  void setMax(String? value) {
    _max = value;
  }

  void brandsName(String? value) {
    _brandsName = value;
  }

  RxBool isNoAds = false.obs;
  carFilter() async {
    print("""
     min : $_min
     max : $_max
     brandname : $_brandsName
    """);
    isNoAds.value = false;
    final data = await FetchVehicals.FilteredVehiles(
        model: _brandsName!.toLowerCase(),
        min: int.parse(_min!),
        max: int.parse(_max!));
    //  _filterVehicalList.bindStream(FetchVehicals.FilteredVehiles(min: int.parse(_min!),max:int.parse(_max!),model: _brandsName!)!);

    _filterVehicalList.value = data;
    Future.delayed(Duration(milliseconds: 500), () => isNoAds.value = true);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    ///Stream To get all property
    _vehicalList.bindStream(FetchVehicals.allVehiles()!);
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _vehicalList.close();

    ///_vehicalList Stream is Close
    _filterVehicalList.close();

    ///_filterVehicalList Stream is Close
    super.dispose();
  }
}
