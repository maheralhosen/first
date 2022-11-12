import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode() ;
  goToResetPassword() ;
}
class VerifyCodeControllerImp extends VerifyCodeController {

  late String verfiycode ;

  @override
  checkCode() {}


  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword) ;
  }

  goToVerfiyCode() {
    // TODO: implement goToVerfiyCode
    throw UnimplementedError();
  }
}