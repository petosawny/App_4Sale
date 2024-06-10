

import 'package:get/get.dart';

import '../../view/auth/Login_Page.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();


  gotoLogin() ;
}


class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verificationCode ;

  @override
  checkCode() {

  }


  @override
  gotoLogin() {
// goto reset password page
    Get.off(LoginPage()) ;
  }

  @override
  void onInit() {
    super.onInit();
  }



}