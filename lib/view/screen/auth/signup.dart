import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_store/view/widget/auth/custom_textformauth.dart';
import 'package:my_store/view/widget/auth/textsignup.dart';
import '../../../constant/colorapp.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/auth/custom_buttomauth.dart';
import '../../widget/auth/custom_textbodyauth.dart';
import '../../widget/auth/custom_texttitleauth.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    /// to make clear for textField when moving from signUp to signIn
    /// to be able to use controller you must wrap Widget in GetBuilder
    // Get.lazyPut(() => signUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        centerTitle: true,
        title: Text("17".tr,
            style: Theme
                .of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey)),
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
      ),
      body: GetBuilder<signUpControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                CustomTitleTextAuth(text: '10'.tr),
                SizedBox(
                  height: 10.h,
                ),
                CustomTitleBodyAuth(
                  body:
                  '24'.tr,
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 20.w),
                //   child: Text(
                //     "Sign in with email and password OR\n continue with social media",
                //     style: Theme.of(context).textTheme.bodyText1,
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormAuth(
                    suffixicon: Icons.person_2_outlined,
                    valid: (val) {
                      return validInput(val!, 5, 40, "username");
                    },
                    hinttext: '23'.tr,
                    labeltext: '20'.tr,
                    mycontroller: controller.username, isNumber: false),
                CustomTextFormAuth(
                    suffixicon: Icons.email_outlined,
                    valid: (val) {
                      return validInput(val!, 10, 40, "email");
                    },
                    hinttext: '12'.tr,
                    labeltext: '18'.tr,
                    mycontroller: controller.email, isNumber: false),
                CustomTextFormAuth(
                    suffixicon: Icons.phone_android_outlined,
                    valid: (val) {
                      return validInput(val!, 7, 40, "phone");
                    },
                    hinttext: '22'.tr,
                    labeltext: '21'.tr,
                    mycontroller: controller.phone, isNumber: true),
                // SizedBox(
                //   height: 20.h,
                // ),
                CustomTextFormAuth(
                    suffixicon: Icons.lock_outline,
                    valid: (val) {
                      return validInput(val!, 5, 40, "password");
                    },
                    hinttext: '13'.tr,
                    labeltext: '19'.tr,
                    mycontroller: controller.password, isNumber: false),
                // TextFormField(
                //   controller: password,
                //   validator: (val) {
                //     return validInput(val!, 5, 20);
                //   },
                //   decoration: InputDecoration(
                //       floatingLabelBehavior: FloatingLabelBehavior.always,
                //       label: Container(
                //         padding: EdgeInsets.symmetric(horizontal: 9.w),
                //         child: const Text('Password'),
                //       ),
                //       hintText: 'Enter your password',
                //       hintStyle: TextStyle(fontSize: 14.sp),
                //       suffixIcon: Icon(Icons.lock_outline),
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black, width: 1),
                //           borderRadius: BorderRadius.all(Radius.circular(30)))),
                // ),
                // const Text("Forget Password", textAlign: TextAlign.end,),
                CustomButtomAuth(text: '17'.tr, onPressed:()
                {
                  controller.signUp();
                },),
                SizedBox(
                  height: 30.h,
                ),
                TextSignUpOrSignIn(
                    onTap: ()
                    {
                      controller.goToSignIn();
                    },
                    textone: "25".tr, texttwo: "26".tr)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
