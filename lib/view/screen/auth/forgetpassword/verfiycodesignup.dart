import 'package:ecommerceproject/controler/auth/verfitcodesignup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp()) ;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey, fontSize: 20)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
            children:  [
               CoustomTextTitleAuth(
                text: "40".tr,
              ),
              const SizedBox(
                height: 10,
              ),
               CoustomTextBodyAuth(
                text:
                "39".tr,
              ),
              const SizedBox(
                height: 45,
              ),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Colors.black,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {

                },

                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp();
                }, // end onSubmit
              ),
            ]
        ),
      ),
    );
  }
}
