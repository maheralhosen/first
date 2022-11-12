import 'package:ecommerceproject/controler/auth/signup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/funication/alert_exit.dart';
import 'package:ecommerceproject/core/funication/valid_input.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey, fontSize: 20)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstatesignup,
              child: ListView(children: [
                CoustomTextTitleAuth(
                  text: "10".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CoustomTextBodyAuth(
                  text: "24".tr,
                ),
                const SizedBox(
                  height: 45,
                ),
                CoustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 30, "username");
                  },
                  mycontroller: controller.username,
                  hinttext: "23".tr,
                  icondata: Icons.person_outline,
                  labletxt: "20".tr,
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
                CoustomTextFormAuth(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 5, 100, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: "22".tr,
                  icondata: Icons.phone_android_outlined,
                  labletxt: "21".tr,
                ),
                CoustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: "13".tr,
                  icondata: Icons.lock_outline,
                  labletxt: "19".tr,
                ),
                CustomButtonAuth(
                  text: "17".tr,
                  onPressed: () {
                    controller.signUp();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextSignUpORSignIn(
                    text1: "25".tr,
                    text2: "26".tr,
                    onTap: () {
                      controller.goToSignIn();
                    }),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
