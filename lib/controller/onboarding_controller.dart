import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store/constant/routes.dart';
import 'package:path/path.dart';

import '../data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  /// انا هنا عملت كلاس abstract لانه في function فالاحسن زي ما اتعلمت فكورس Clean Archecture انو استخدم contract implementation الفكره استخدم كلاس يتنفذ هذه الدوال
  /// طبعا بالتعاقد مع الكلاس الموجودة في هذه الدوال ألabstract
  next();

  ///To move between pages
  onPageChanged(int index);

  ///To interact with dots when moving between pages
}

///Imp => Implement
class OnBoardingControllerImp extends OnboardingController {
  int currentPage = 0;
  late PageController pageController;

  @override
  next() {
    currentPage ++;
    if(currentPage > onBoardingList.length -1)
    {
      print("Page4");
      /// انا هنا استخدمت هاي offAllNamed لانه ما داعي يرجع لورا خلص
      Get.offAllNamed(AppRoute.login);
    }else
    {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  /// مباشره بعد معمل override للدوال عالكلاس وبعمل حقن لgetx
  /// Get.put(OnBoardingControllerImp);
}
