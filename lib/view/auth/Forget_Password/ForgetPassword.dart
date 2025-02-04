
import 'package:code/view/auth/Forget_Password/verify_code_forget_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/function/Valid_Input.dart';
import '../../../controller/Auth/ForgetPassword_controller.dart';
import '../../../widgets/auth/CustomLoginButton.dart';
import '../../../widgets/auth/Custom_Signup_Text.dart';
import '../../../widgets/auth/customTextFormField.dart';
import '../../../widgets/auth/customTextTitleAuth.dart';
import '../Login_Page.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          " Forget Password",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: const CustomTextTitleAuth(
                title: ' Check email or phone number',
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(   valid: (val){
              return  ValidInput(val! , 5 , 30 , "username");

            },
              hintText: 'Enter your user Name',
              labelText: 'Email;',
              iconData: Icons.person_rounded,
              mycontroller: controller.email,
            ),

            CustomTextFormField(   valid: (val){
              return  ValidInput(val! , 5 , 30 , "phone");

            },
              hintText: 'Enter your phone Number',
              labelText: 'phone;',
              iconData: Icons.phone,
              mycontroller: controller.phone,
            ),

            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              buttonName: 'Check',onPressed: (){
                Get.to(VerifyCode());
            },
            ),
            CustomSignUpOrSignInText(
              textOne: 'already have an account ',
              textTwo: 'Sign In',
              onTap: () {
                Get.off(LoginPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
