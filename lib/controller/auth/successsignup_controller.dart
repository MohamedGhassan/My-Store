import 'package:get/get.dart';
import 'package:my_store/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController{
  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }

}
