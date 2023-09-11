import 'package:get/get.dart';
import 'package:my_store/constant/routes.dart';

abstract class SuccessResetPassowrdController extends GetxController{
goToPageLogin();
}

class SuccessResetPassowrdControllerImp extends SuccessResetPassowrdController{
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
