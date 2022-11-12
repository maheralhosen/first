import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  checkemail() ;
  goToVerfiyCode() ;
}
class ForgetPasswordControllerImp extends ForgetPasswordController {

  GlobalKey<FormState> formstateforgetpassword = GlobalKey<FormState>() ;

   TextEditingController email =TextEditingController() ;

  forgetpassword() {
    var formdata = formstateforgetpassword.currentState ;
    if(formdata!.validate()){
      Get.offNamed(AppRoute.verfiyCode);
      print("Valid") ;
    }else {
     debugPrint("Not Valid") ;
    }
  }


  @override
  checkemail() {}


  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode) ;
  }
  @override
  void onInit() {
    email = TextEditingController() ;
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  // @override
  // signUp() {
  //   // TODO: implement signUp
  //   throw UnimplementedError();
  // }

  // @override
  // goToSignUp() {
  //   // TODO: implement goToSignUp
  //   throw UnimplementedError();
  // }
  //
  // @override
  // goToVerfiyCode() {
  //   // TODO: implement goToVerfiyCode
  //   throw UnimplementedError();
  // }
}