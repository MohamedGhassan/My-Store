import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/colorapp.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';
import '../../../responsive.dart';

class CustomDotControllerOnboarding extends StatelessWidget {
  const CustomDotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    /// عشان اغير عرض Dot لما تكون فعاله فبدي احط row جوا getBuilder
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: EdgeInsets.only(right: 5.w),
              // margin: EdgeInsets.only(right: 5.w),
              duration: const Duration(microseconds: 900),
              width: controller.currentPage == index ? Responsive.isMobile(context) ? 20.w : 25.w : Responsive.isMobile(context) ? 5.w : 6.w,
              // width: controller.currentPage == index ? 20 : 5,
              height: Responsive.isMobile(context) ? 6.h : 8.h,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
