import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../constant/colorapp.dart';
import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_buttomauth.dart';
import '../../../widget/auth/custom_textbodyauth.dart';
import '../../../widget/auth/custom_textformauth.dart';
import '../../../widget/auth/custom_texttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        actions: [],
        centerTitle: true,
        title: Text("34".tr,
            style: Theme
                .of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey)),
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
        child: Form(
          key: controller.formsate,
          child: ListView(
            children: [
              CustomTitleTextAuth(text: '36'.tr),
              SizedBox(
                height: 10.h,
              ),
              CustomTitleBodyAuth(
                body:
                '35'.tr,
              ),
              CustomTextFormAuth(
                  suffixicon: Icons.lock_outline,
                  valid: (val) {
                    return validInput(val!, 5, 40, "password");
                  },
                  hinttext: '13'.tr,
                  labeltext: '19'.tr,
                  mycontroller: controller.password, isNumber: false,),
              CustomTextFormAuth(
                  suffixicon: Icons.lock_outline,
                  valid: (val) {
                    return validInput(val!, 5, 40, "password");
                  },
                  hinttext: '37'.tr,
                  labeltext: '19'.tr,
                  mycontroller: controller.password, isNumber: false,),
              SizedBox(
                height: 15.h,
              ),
              CustomButtomAuth(text: '33'.tr, onPressed: ()
              {
                controller.goToSuccessResetPassword();
              },),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
