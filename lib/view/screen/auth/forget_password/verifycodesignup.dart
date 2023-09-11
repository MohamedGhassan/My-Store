import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../constant/colorapp.dart';
import '../../../../controller/auth/verifycodesignup_controller.dart';
import '../../../widget/auth/custom_textbodyauth.dart';
import '../../../widget/auth/custom_texttitleauth.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        actions: [],
        centerTitle: true,
        title: Text("38".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey)),
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
        child: ListView(
          children: [
            CustomTitleTextAuth(text: '39'.tr),
            SizedBox(
              height: 10.h,
            ),
            CustomTitleBodyAuth(
              body: '40'.tr,
            ),
            SizedBox(
              height: 15.h,
            ),
            OtpTextField(
              fieldWidth: 50.w,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode)
              {
                controller.goToSuccessSignup();
              }, // end onSubmit
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
