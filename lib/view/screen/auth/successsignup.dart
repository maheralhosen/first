import 'package:ecommerceproject/controler/auth/successsignup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp()) ;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('32'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey, fontSize: 20)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children:  [
            const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppColor.primaryColor,
                )),
            Text("37".tr,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
            Text("38".tr),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  controller.goToPageLogin() ;

                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
