import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/middelware/mymiddel_ware.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/verfiycodesignup.dart';
import 'package:ecommerceproject/view/screen/auth/language.dart';
import 'package:ecommerceproject/view/screen/auth/login.dart';
import 'package:ecommerceproject/view/screen/auth/onboarding.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/signup.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/successsignup.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () =>const Language() , middlewares: [
    MyMiddleWare()
  ] ) ,
  GetPage(name: AppRoute.login, page: () =>const Login() ) ,
  GetPage(name: AppRoute.signUP, page: () =>const SignUp() ) ,
  GetPage(name: AppRoute.forgetPassword, page: () =>const ForgetPassword() ) ,
  GetPage(name: AppRoute.verfiyCode, page: () =>const VerfiyCode() ) ,
  GetPage(name: AppRoute.resetPassword, page: () =>const ResetPassword() ) ,
  GetPage(name: AppRoute.successResetPassword, page: () =>const SuccessResetPassword() ) ,
  GetPage(name: AppRoute.successSignUp, page: () =>const SuccessSignUp() ) ,
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () =>const VerfiyCodeSignUp() ) ,
  GetPage(name: AppRoute.onBoarding, page: () =>const OnBoarding() ) ,


] ;