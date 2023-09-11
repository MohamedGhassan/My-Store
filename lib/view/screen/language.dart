import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_store/constant/colorapp.dart';
import 'package:my_store/constant/routes.dart';
import 'package:my_store/view/widget/custombuttomlang.dart';
import '../../core/localization/changelocal.dart';

class MyLanguage extends GetView<LocalController> {
  const MyLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.h),
            // padding: EdgeInsets.symmetric(vertical: 50.h),
          // padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("1".tr,
                  style: Theme.of(context).textTheme.headline5),
              SizedBox(
                height: 20.h,
              ),
              CustomButtomLang(textbuttom: 'Ar', onPressed: ()
              {
                /// ملاحظه: هاد الكلاس LocalController محقون، انا حقنته اول مفتح التطبيق يعني بقدر اصله من اي مكان فبقدر اصله بس من خلال getView زي منا عامل فوق
                controller.changeLocale("ar");
                /// بقدر يعمل back
                Get.toNamed(AppRoute.onboarding);
              }),
              SizedBox(
                height: 10.h,
                // height: 10.h,
              ),
              CustomButtomLang(textbuttom: 'En',onPressed: ()
              {
                controller.changeLocale("en");
                Get.toNamed(AppRoute.onboarding);
              })
            ],
          ),
        ),
      ),
    );
  }
}
