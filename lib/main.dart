import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_store/binding.dart';
import 'package:my_store/routes.dart';
import 'package:my_store/view/screen/auth/login.dart';
import 'package:my_store/view/screen/language.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    LocalController controller = Get.put(LocalController());
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      // minTextAdapt: true,
      minTextAdapt: controller.minTextAdapt ?? true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: MyTranslations(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: controller. language,
          theme: controller.appTheme,
          initialBinding: MyBinding(),
          // theme: themeEnglish,
          // initialRoute: /,
          home: const Login(),
          routes: routess,
        );
      },
    );
  }
}
