import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store/core/services/services.dart';
import '../../constant/apptheme.dart';

class LocalController extends GetxController {
  Locale? language;
  ThemeData appTheme = themeEnglish ;
  MyServices myServices = Get.find();
  changeLocale(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish ;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  late bool? minTextAdapt;
  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic ;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    minTextAdapt = true;
    super.onInit();
  }
}
// class LocalController extends GetxController {
//   Locale? language;
//   ///Get.find() is used to create an instance of an already existing controller
//   ///reverse get.put()
//   MyServices myServices = Get. find();
//
//   ThemeData? appTheme;
//
//   /// A function to control changing languages
//   changeLocale(String langcode){
//     Locale locale = Locale(langcode);
//     myServices.sharedPreferences.setString("lang", langcode);
//     appTheme = langcode == "ar" ? themeArabic: themeEnglish;
//     Get.changeTheme(appTheme!);
//     Get.updateLocale(locale);
//   }
//   /// Function When the application opens, it uses the device's language
//   bool? minTextAdapt;
//
//   @override
//   void onInit() {
//     String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
//     if(sharedPrefLang == "ar"){
//       language = const Locale("ar");
//       appTheme = themeArabic;
//     }else if(sharedPrefLang == "en"){
//       language = const Locale("en");
//       appTheme = themeEnglish;
//     }else{
//       language = Locale(Get.deviceLocale!.languageCode);
//       // appTheme = themeEnglish;
//     }
//     minTextAdapt = true;
//     super.onInit();
//   }
// }