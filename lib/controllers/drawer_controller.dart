import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RDrawerController extends GetxController {
  //var scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> carscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "carkey");
  GlobalKey<ScaffoldState> carfilterscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "carfilterkey");
  GlobalKey<ScaffoldState> findcarscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "findcarkey");
  GlobalKey<ScaffoldState> findpropertyscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "findpropertykey");
  GlobalKey<ScaffoldState> findplacescaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "findplacekey");
  GlobalKey<ScaffoldState> homescreenscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "homescreenkey");
  GlobalKey<ScaffoldState> housescreenscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "housescreenkey");
  GlobalKey<ScaffoldState> mapscreenscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "mapkey");
  GlobalKey<ScaffoldState> phasescreenscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "phasekey");
  GlobalKey<ScaffoldState> profilescaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "profilekey");
  GlobalKey<ScaffoldState> propertyfilterscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "propertyfilterkey");
  GlobalKey<ScaffoldState> propertyscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "propertykey");
  GlobalKey<ScaffoldState> searchcarscaffoldkey =
      GlobalKey<ScaffoldState>(debugLabel: "searchcarkey");

  // var carfilterscreenkey = GlobalKey<ScaffoldState>();

  void openDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    try {
      //scaffoldKey.printError();
      scaffoldKey.currentState!.openEndDrawer();
    } catch (e) {
      //print(e);
    }
  }
}
