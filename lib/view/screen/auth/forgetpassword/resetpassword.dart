import 'package:ecommerceproject/controler/auth/resetpassword_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp()) ;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('Reset Password',
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
                text: "35".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CoustomTextBodyAuth(
                text:
                "35".tr,
              ),
              const SizedBox(
                height: 45,
              ),
              CoustomTextFormAuth(
                isNumber: false,
                valid: (val){

                },
                mycontroller: controller.password,
                hinttext: "13".tr,
                icondata: Icons.lock_outline,
                labletxt: "19".tr,
              ),
              CoustomTextFormAuth(
                isNumber: false,
                valid: (val){

                },
                mycontroller: controller.password,
                hinttext: "13".tr,
                icondata: Icons.lock_outline,
                labletxt: "19".tr,
              ),

              // CoustomTextFormAuth(
              //   mycontroller: controller.email,
              //   hinttext: "Enter Your Email",
              //   icondata: Icons.email_outlined,
              //   labletxt: "Email",
              // ),

              CustomButtonAuth(text: "33".tr,onPressed: (){
                controller.goToSuccessResetPassword();
              }, ),
              const SizedBox(
                height: 30,
              ),
            ]
        ),
      ),
    );
  }
}
