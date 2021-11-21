import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pricestore/modals/property_modal.dart';

class FetchProperties {
  /// homeProperties Stream Method is to get Random 3 properties in HomeScreen
  static Stream<List<PropertyBeanClass>>? homeProperties() {
    try {
      return FirebaseFirestore.instance
          .collection("Properties")
          .where('isApproved', isEqualTo: true)
          .limit(3)
          .snapshots()
          .map((event) {
        List<PropertyBeanClass> _listOfProperty = <PropertyBeanClass>[];
        event.docs.forEach((element) {
          _listOfProperty.add(PropertyBeanClass.fromJson(element.data()));
        });
        return _listOfProperty;
      });
    } catch (e) {
      print(
          "Exception Found In homeProperties Method in fetch_properties.dart");
    }
  }

  /// homeProperties Stream Method is to get All properties in HomeScreen
  static Stream<List<PropertyBeanClass>>? allProperties() {
    try {
      return FirebaseFirestore.instance
          .collection("Properties")
          .where('isApproved', isEqualTo: true)
          .snapshots()
          .map((event) {
        List<PropertyBeanClass> _listOfProperty = <PropertyBeanClass>[];
        event.docs.forEach((element) {
          _listOfProperty.add(PropertyBeanClass.fromJson(element.data()));
        });
        return _listOfProperty;
      });
    } catch (e) {
      print("Exception Found in allProperties Method in fetch_properties.dart");
    }
  }

  // static Future<List<PropertyBeanClass>> homeProperties()async{
  //   print("This is running now");
  //   List<PropertyBeanClass> _listOfProperty = <PropertyBeanClass>[];
  //   FirebaseFirestore.instance.collection("Properties").limit(3).get().then((value) {
  //   value.docs.forEach((element) {
  //     print(element.data());
  //        _listOfProperty.add(new PropertyBeanClass.fromJson(element.data()));
  //      });
  //    });
  //    return _listOfProperty;
  // }
  /// Stream To Get All FilteredVehiles
  static Future<List<PropertyBeanClass>> FilteredProperty(
      {required String city,
      required int min,
      required int max,
      required String property_type,
      required String isBuy,
      required String n_bath,
      required String n_bedroom}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> data =
          await FirebaseFirestore.instance
              .collection("Properties")
              .where('isApproved', isEqualTo: true)
              .where('city', isEqualTo: city)
              // .where('location',isEqualTo:location)
              .where('price', isGreaterThanOrEqualTo: min)
              .where('price', isLessThanOrEqualTo: max)
              .where('property_type', isEqualTo: property_type)
              .where('property_br', isEqualTo: isBuy)
              .where('n_bedroom', isEqualTo: n_bedroom)
              .where('n_bathrooms', isEqualTo: n_bath)
              .get();
      List<PropertyBeanClass> _propertyList = [];
      data.docs.forEach((e) {
        PropertyBeanClass _beanclass = PropertyBeanClass.fromJson(e.data());
        _propertyList.add(_beanclass);
      });
            return _propertyList;
    } catch (e) {
      print(
          "Exception Found In allVehiles Method Stream in fetch_vehicals.dart");
      print(e.toString());
      throw 'Error Found in Search';
    }
  }
}
