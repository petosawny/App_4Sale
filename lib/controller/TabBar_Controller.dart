
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController{

  late  TabController controller ;

  final List<Tab> myTabs = <Tab>[
    Tab(
     child : Text(
       "tab1"
     ),
    ),
    Tab(
     child : Text(
       "tab2"
     ),
    ),
  ] ;

  @override
  void onInit() {

// controller = TabController(length: 2, vsync:  ) ;

    super.onInit();
  }

  @override
  void onClose() {
controller.dispose() ;
    super.onClose();
  }
}