import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode() ;
  goToSuccessSignUp() ;
}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  late String verfiycode ;

  @override
  checkCode() {}


  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp) ;
  }

}