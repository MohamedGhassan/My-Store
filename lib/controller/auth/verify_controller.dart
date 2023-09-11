import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../constant/routes.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    var formdata = formstate.currentState!;
    if (formdata.validate()) {
      print("Valid");
      /// ما في داعي يرجع
      Get.offNamed(AppRoute.resetPassword);
    } else {
      print("Not Valid");
    }
  }
  @override
  void onInit() {
    super.onInit();
  }

}