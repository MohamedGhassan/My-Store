import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colorapp.dart';
import '../../../controller/onboarding_controller.dart';

class CustomBottomOnboarding extends GetView<OnBoardingControllerImp> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      // alignment: Alignment.bottomCenter,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
            horizontal: 100.h, vertical: 2.h),
        onPressed: ()
        {
          controller.next();
        },
        child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold),),
        color: AppColor.primaryColor,
        textColor: AppColor.white,
      ),
    );
  }
}