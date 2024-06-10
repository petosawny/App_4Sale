
import 'package:code/view/Home_4sale/LayoutScreen_.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreenViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
    late AnimationController animationController;
    late Animation<double> animation;
    bool animate = false;


    @override
    void onInit() {
    animationInitilization();
    fadeInAnimation();
    super.onInit();
    }




    animationInitilization() {
    animationController =
    AnimationController(vsync: this,
        duration:  Duration(seconds: 2),);
    animation =
    CurvedAnimation(parent: animationController, curve: Curves.easeOut)
        .obs
        .value;
    animation.addListener(() => update());
    animationController.forward();
    }

    Future fadeInAnimation() async {
      await Future.delayed(const Duration(seconds: 2));

animate = true ;
      await Future.delayed(const Duration(seconds: 2));

      Get.offAll(() =>  LayoutScreen());
    }
}