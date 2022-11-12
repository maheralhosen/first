import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  checkemail() ;
  goToSuccessResetPassword() ;
}
class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password ;
  late TextEditingController repassword ;


  resetpassword() {}


  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword) ;
  }
  @override
  void onInit() {
    password = TextEditingController() ;
    repassword = TextEditingController() ;
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  goToSignUp() {
    // TODO: implement goToSignUp
    throw UnimplementedError();
  }

  @override
  goToVerfiyCode() {
    // TODO: implement goToVerfiyCode
    throw UnimplementedError();
  }

  @override
  checkemail() {
    // TODO: implement checkemail
    throw UnimplementedError();
  }
}