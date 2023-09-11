import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../constant/routes.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{
  TextEditingController? email;
  GlobalKey<FormState> formsate= GlobalKey<FormState>();


  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    var formdata = formsate.currentState!;
    if(formdata.validate()){
      print("Valid");
      Get.offNamed(AppRoute.verifyCode);
    }else{
      print("Not Valid");
    }
  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email!.dispose();
    super.dispose();
  }

}