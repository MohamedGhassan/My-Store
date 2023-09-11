import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_store/constant/colorapp.dart';
import '../../../../controller/auth/successresetpassword_controller.dart';
import '../../../widget/auth/custom_buttomauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPassowrdControllerImp controller = Get.put(SuccessResetPassowrdControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColor.grey,
          size: 20.sp,
        ),
        centerTitle: true,
        title: Text("32".tr,
            style: Theme
                .of(context)
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
            Text("....."),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(text: '31'.tr, onPressed: ()
              {
                controller.goToPageLogin();
              },),
            ),
          ],
        ),
      ),
    );
  }
}
