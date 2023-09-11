import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../constant/colorapp.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';
import '../../../responsive.dart';

/// هنا انا خليت OnBoardingControllerImp مستمع لاي تغيير بسير على Slider
class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        // print(val);
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Image.asset(
              onBoardingList[i].image!,
              // width: Responsive.isMobile(context) ? double.infinity : null,
              // width: Responsive.isMobile(context) ? 220.w : 200.w,
              // height: Responsive.isMobile(context) ? 250.h : 320.h,
              height: Get.width / 1.3,
              fit: Responsive.isMobile(context)
                  ? BoxFit.fill
                  : BoxFit.fill,
            ),
          ),
          SizedBox(
            height: Responsive.isMobile(context) ? 70.h : double.minPositive,
          ),
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2
                    !.copyWith(color: AppColor.grey),
              )),
        ],
      ),
      // controller: ,
    );
  }
}
