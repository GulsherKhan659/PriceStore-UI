import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RDrawerController extends GetxController{
  //var scaffoldKey = GlobalKey<ScaffoldState>();

  var carscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "carkey");
  var carfilterscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "carfilterkey");
  var findcarscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "findcarkey");
  var findpropertyscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "findpropertykey");
  var findplacescaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "findplacekey");
  var homescreenscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "homescreenkey");
  var housescreenscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "housescreenkey");
  var mapscreenscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "mapkey");
  var phasescreenscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "phasekey");
  var profilescaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "profilekey");
  var propertyfilterscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "propertyfilterkey");
  var propertyscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "propertykey");
  var searchcarscaffoldkey = GlobalKey<ScaffoldState>(debugLabel: "searchcarkey");



  // var carfilterscreenkey = GlobalKey<ScaffoldState>();

  void openDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  try{
     //scaffoldKey.printError();
    scaffoldKey.currentState!.openEndDrawer();
  }catch(e){
    print(e);
  }
  }
}