import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_store/constant/colorapp.dart';
import '../../../controller/auth/successsignup_controller.dart';
import '../../widget/auth/custom_buttomauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        centerTitle: true,
        title: Text("32".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.grey)),
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200.sp,
                color: AppColor.primaryColor,
              ),
            ),
            Text(
              "42".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 25.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text("43".tr),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: '31'.tr,
                onPressed: () {
                  controller.goToPageLogin();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
