import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../constant/routes.dart';

abstract class loginController extends GetxController{
  login();
  goToSignUp();
  goToForgetPassword();
}

class loginControllerImp extends loginController{
  TextEditingController? email;
  TextEditingController? password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  login() {
    var formdata = formstate.currentState!;
    if (formdata.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email!.dispose();
    password!.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
   Get.toNamed(AppRoute.forgetPassword);
  }

}