import 'package:ecommerceproject/controler/auth/login_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/funication/alert_exit.dart';
import 'package:ecommerceproject/core/funication/valid_input.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:ecommerceproject/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('Sign in',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey, fontSize: 20)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              const LogoAuth(),
              CoustomTextTitleAuth(
                text: "10".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CoustomTextBodyAuth(
                text: "11".tr,
              ),
              const SizedBox(
                height: 45,
              ),
              CoustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
                mycontroller: controller.email,
                hinttext: "12".tr,
                icondata: Icons.email_outlined,
                labletxt: "18".tr,
              ),
              GetBuilder<LoginControllerImp>(builder: (controller) => CoustomTextFormAuth(
                obscureText: controller.isshowpassword,
                onTapIcon: (){
                  controller.showPassword() ;
                },
                isNumber: false, 
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "13".tr,
                icondata: Icons.lock_outline,
                labletxt: "19".tr,
              ),),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  "14".tr,
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtonAuth(
                text: "15".tr,
                onPressed: () {
                  controller.login();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpORSignIn(
                  text1: "16".tr,
                  text2: "17".tr,
                  onTap: () {
                    controller.goToSignUp();
                  }),
            ]),
          ),
        ),
      ),
    );
  }
}
