

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/auth/signUp_Page.dart';

abstract class ForgetPasswordController extends GetxController{
  checkMail();
  checkPhone();

  gotoVerifyCode() ;
}


class ForgetPasswordControllerImp extends ForgetPasswordController{

  late TextEditingController email ;
  late TextEditingController phone ;

  @override
  checkMail() {

  }

  @override
  checkPhone() {

  }


  @override
  gotoVerifyCode() {
    Get.off(SignUpPage);
  }

  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose() ;
    phone.dispose() ;

    super.dispose();
  }



}