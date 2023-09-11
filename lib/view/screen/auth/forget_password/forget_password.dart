import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_store/view/widget/auth/custom_textformauth.dart';
import '../../../../constant/colorapp.dart';
import '../../../../controller/auth/forgetpassword_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_buttomauth.dart';
import '../../../widget/auth/custom_textbodyauth.dart';
import '../../../widget/auth/custom_texttitleauth.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        actions: [],
        centerTitle: true,
        title: Text("14".tr,
            style: Theme.of(context)
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
              CustomTitleTextAuth(text: '27'.tr),
              SizedBox(
                height: 10.h,
              ),
              CustomTitleBodyAuth(
                body: '29'.tr,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormAuth(
                suffixicon: Icons.email_outlined,
                valid: (val) {
                  return validInput(val!, 10, 40, "email");
                },
                hinttext: '12'.tr,
                labeltext: '18'.tr,
                mycontroller: controller.email,
                isNumber: false,
              ),
              CustomButtomAuth(
                text: '30'.tr,
                onPressed: () {
                  controller.goToVerifyCode();
                },
              ),
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
