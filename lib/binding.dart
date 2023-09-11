import 'package:get/get.dart';

import 'controller/auth/signup_controller.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    ///fenix لازم تيجي مع lazy
    Get.lazyPut(() => signUpControllerImp(), fenix: true);
  }

}