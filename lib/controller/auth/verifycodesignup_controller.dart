import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignup();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verifycode;
  @override
  checkCode() {}

  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoute.successSignup);
  }
  @override
  void onInit() {
    super.onInit();
  }

}