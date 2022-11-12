import 'package:ecommerceproject/controler/onboarding_controller.dart';
import 'package:ecommerceproject/view/widget/onboarding/custombutton.dart';
import 'package:ecommerceproject/view/widget/onboarding/customslider.dart';
import 'package:ecommerceproject/view/widget/onboarding/dotcotroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const Expanded(
                flex: 3,
                child: CustomSliderOnBoarding() ,
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                     CustomDotControllerOnBoarding() ,
                      Spacer(flex: 2,),
                      CustomButtonOnBoarding(),
                    ],
                  ))
            ],
          )),
    );
  }
}
