import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  signUp() ;
  goToSignIn() ;
}
class SignUpControllerImp extends SignUpController {

  GlobalKey<FormState> formstatesignup = GlobalKey<FormState>() ;

  late TextEditingController email ;
  late TextEditingController password ;
  late TextEditingController username ;
  late TextEditingController phone ;

  @override
  signUp() {

    var formdata = formstatesignup.currentState ;
    if(formdata!.validate()){
      print("Valid") ;
      Get.offNamed(AppRoute.verfiyCodeSignUp);

    }else {
      print("Not Valid") ;
    }

  }



  @override
  void onInit() {
    username = TextEditingController() ;
    phone = TextEditingController() ;
    email = TextEditingController() ;
    password = TextEditingController() ;
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose() ;
    username.dispose() ;
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login) ;
  }
}