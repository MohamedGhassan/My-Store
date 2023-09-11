import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_store/controller/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/CustonInkBtn.dart';
import '../../widget/auth/custom_buttomauth.dart';
import '../../widget/auth/custom_texttitleauth.dart';
import '../../widget/auth/logoauth.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    loginControllerImp controller = Get.put(loginControllerImp());
    return Scaffold(
      body:  Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            LogoAuth(),
            CustomTitleTextAuth(text: "14".tr),
            SizedBox(height: 50.h),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "13".tr,
                onPressed: () {
                  controller.login();
                },
              ),
            ),

            SizedBox(height: 10.h),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "22".tr,
                onPressed: () {
                  controller.goToSignUp();
                },
              ),
            ),
            SizedBox(height: 100.h),
            CustonInkBtn(inkTextBtn: "32".tr),
          ],
        ),
      ),
    );

  }
}
