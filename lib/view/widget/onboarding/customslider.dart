import 'package:ecommerceproject/controler/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            const SizedBox(height: 50),
            Text(onBoardingList[i].title!,
                style:const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, color: AppColor.black)),
            const SizedBox(height: 40),
            Image.asset(
              onBoardingList[i].image!,
              // width: ,
              // height: 230,
              // fit: BoxFit.fill,
            ),
            const SizedBox(height: 90),

            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  style:const TextStyle(
                      height: 2,
                      color: AppColor.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                )),
          ],
        ));
  }
}