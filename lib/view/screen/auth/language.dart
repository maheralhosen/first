import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/locolaization/changelocal.dart';
import 'package:ecommerceproject/view/widget/language/custombuttomlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr, style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLanguage(
              textbutton: "العربية",
              onPressed: () {
                controller.changeLang("ar") ;
                Get.toNamed(AppRoute.onBoarding) ;
              },
            ),
            CustomButtonLanguage(
              textbutton: "English",
              onPressed: () {
                controller.changeLang("en") ;
                Get.toNamed(AppRoute.onBoarding) ;
              },
            ),
          ],
        ),
      ),
    );
  }
}
