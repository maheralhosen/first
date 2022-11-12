import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/funication/valid_input.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/coustomtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controler/auth/forgetpassword_controller.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp()) ;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey, fontSize: 20)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstateforgetpassword,
          child: ListView(
              children:  [
                 CoustomTextTitleAuth(
                  text: "27".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                 CoustomTextBodyAuth(
                  text:
                  "29".tr,
                ),
                const SizedBox(
                  height: 45,
                ),

                CoustomTextFormAuth(
                  isNumber: false,
                  valid: (val){
                    return validInput(val!,5, 30, "username");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  icondata: Icons.email_outlined,
                  labletxt: "18".tr,
                ),

                CustomButtonAuth(text: "30".tr,onPressed: (){
                  controller.goToVerfiyCode() ;
                }, ),
                const SizedBox(
                  height: 30,
                ),
              ]
          ),
        ),
      ),
    );
  }
}
