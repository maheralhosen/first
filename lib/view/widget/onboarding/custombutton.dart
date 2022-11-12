import 'package:ecommerceproject/controler/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 30),
      height: 45,
      child: MaterialButton(
        padding:const EdgeInsets.symmetric(horizontal: 100,),
        textColor: Colors.white,
        onPressed: (){
          controller.next() ;
        },
        color: AppColor.primaryColor,
        child: Text('8'.tr,style:const TextStyle( fontSize:15 ),),
      ),
    );
  }
}
