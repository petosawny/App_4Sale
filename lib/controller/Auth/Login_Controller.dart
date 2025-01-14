import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/auth/signUp_Page.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSignUp();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;

  late TextEditingController password;

  bool isShowPassword = true;

  ShowPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("Not valid");
    }
  }

  @override
  gotoSignUp() {
    Get.off(SignUpPage);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();

    super.dispose();
  }
}
