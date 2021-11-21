import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '/modals/vehicle_modal.dart';

class FetchVehicals {
  /// Stream To Get home Screen Vehicals
  static Stream<List<VehicleBeanClass>>? homeVehiles() {
    try {
      return FirebaseFirestore.instance
          .collection("Vehicles")
          .where('isApproved', isEqualTo: true)
          .limit(4)
          .snapshots()
          .map((event) {
        List<VehicleBeanClass> _listOfVechical = <VehicleBeanClass>[];
        event.docs.forEach((element) {
          _listOfVechical.add(VehicleBeanClass.fromJson(element.data()));
        });
        return _listOfVechical;
      });
    } catch (e) {
      print(
          "Exception Found In homeVehiles Method Stream in fetch_vehicals.dart");
      print(e.toString());
    }
  }

  /// Stream To Get All Vehicals
  static Stream<List<VehicleBeanClass>>? allVehiles() {
    try {
      return FirebaseFirestore.instance
          .collection("Vehicles")
          .where('isApproved', isEqualTo: true)
          .snapshots()
          .map((event) {
        List<VehicleBeanClass> _listOfProperty = <VehicleBeanClass>[];
        event.docs.forEach((element) {
          _listOfProperty.add(VehicleBeanClass.fromJson(element.data()));
        });
        return _listOfProperty;
      });
    } catch (e) {
      print(
          "Exception Found In allVehiles Method Stream in fetch_vehicals.dart");
      print(e.toString());
    }
  }

  /// Stream To Get All FilteredVehiles
  static Future<List<VehicleBeanClass>> FilteredVehiles(
      {required int min, required int max, required String model}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> data = await FirebaseFirestore
          .instance
          .collection("Vehicles")
          .where('isApproved', isEqualTo: true)
          .where('make', isEqualTo: model)
          .where('price', isGreaterThanOrEqualTo: min)
          .where('price', isLessThanOrEqualTo: max)
          .get();
      List<VehicleBeanClass> _vehicalList = [];
      data.docs.forEach((e) {
        VehicleBeanClass _beanclass = VehicleBeanClass.fromJson(e.data());
        _vehicalList.add(_beanclass);
      });
      return _vehicalList;
    } catch (e) {
      print(
          "Exception Found In allVehiles Method Stream in fetch_vehicals.dart");
      print(e.toString());
      throw 'Error found in vehcial';
    }
  }
}
