


import 'package:get/get.dart';

import '../../view/auth/Forget_Password/ResetPassword.dart';

abstract class VerifyCodeForgetPassController extends GetxController{
  checkCode();


  gotoResetPassword() ;
}


class VerifyCodeForgetPassControllerImp extends VerifyCodeForgetPassController{

  late String verificationCode ;

  @override
  checkCode() {

  }


  @override
  gotoResetPassword() {
// goto reset password page
  Get.to(ResetPassword()) ;
  }

  @override
  void onInit() {
    super.onInit();
  }



}