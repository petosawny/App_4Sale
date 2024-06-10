import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/function/Valid_Input.dart';

import '../../controller/Auth/Login_Controller.dart';
import '../../widgets/auth/CustomLoginButton.dart';
import '../../widgets/auth/Custom_Signup_Text.dart';
import '../../widgets/auth/LogoAuth.dart';
import '../../widgets/auth/customTextBodyAuth.dart';
import '../../widgets/auth/customTextFormField.dart';
import '../../widgets/auth/customTextTitleAuth.dart';
import 'Forget_Password/ForgetPassword.dart';
import 'signUp_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " Sign in",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              LogoAuth(),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const CustomTextTitleAuth(
                  title: 'Welcom Back',
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const CustomTextBodyAuth(
                    description: 'Enter your email and your password',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                valid: (val) {
                  return ValidInput(val!, 5, 100, "email");
                },
                hintText: 'Enter your E-mail',
                labelText: 'Email;',
                iconData: Icons.email_outlined,
                mycontroller: controller.email,
              ),
              GetBuilder<LoginControllerImp>(
                builder: (controller) => CustomTextFormField(
                  obscureText: controller.isShowPassword,
                  onTapicon: () {
                    controller.ShowPassword();
                  },
                  valid: (val) {
                    return ValidInput(val!, 5, 30, "password");
                  },
                  hintText: 'Enter your password',
                  labelText: 'Password;',
                  iconData: Icons.password_outlined,
                  mycontroller: controller.password,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.to(const ForgetPassword());
                },
                child: const Text(
                  "Forget your passwprd ? ",
                  textAlign: TextAlign.right,
                ),
              ),
              CustomButtonAuth(
                onPressed: () {
                  controller.login();
                },
                buttonName: 'Login',
              ),
              CustomSignUpOrSignInText(
                textOne: 'dont have an account ? ',
                textTwo: 'Sign Up',
                onTap: () {
                  Get.off(const SignUpPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
