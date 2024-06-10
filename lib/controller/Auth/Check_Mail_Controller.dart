

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/auth/succes_signUp.dart';

abstract class CeckEmailController extends GetxController{
  CHeckingEmail();

  gotoSuccessSignUp() ;
}


class CeckEmailControllerImp extends CeckEmailController{

  late TextEditingController email ;

  @override
  CHeckingEmail() {

  }


  @override
  gotoSuccessSignUp() {
    Get.off(SuccessSignUp());
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose() ;

    super.dispose();
  }

}