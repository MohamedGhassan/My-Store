import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../constant/routes.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{
  TextEditingController? password;
  TextEditingController? repassword;
  GlobalKey<FormState> formsate = GlobalKey<FormState>();


  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    var formdata = formsate.currentState!;
    if(formdata.validate()){
      print("Valid");
      Get.offNamed(AppRoute.successResetPass);
    }else{
      print("Not Valid");
    }
  }
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password!.dispose();
    repassword!.dispose();
    super.dispose();
  }

}