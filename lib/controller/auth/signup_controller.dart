import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../constant/routes.dart';

abstract class signUpController extends GetxController{
  signUp();
  goToSignIn();
}

class signUpControllerImp extends signUpController{
  TextEditingController? username;
  TextEditingController? email;
  TextEditingController? phone;
  TextEditingController? password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  @override
  signUp()
  {
    var formdata = formstate.currentState!;
    if (formdata.validate()) {
      print("Valid");
      /// ما في داعي يرجع
      Get.offNamed(AppRoute.verifyCodeSignup);
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username!.dispose();
    email!.dispose();
    phone!.dispose();
    password!.dispose();
    super.dispose();
  }

}