import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store/constant/colorapp.dart';
import '../../controller/onboarding_controller.dart';
import '../../responsive.dart';
import '../widget/onboarding/custom_bottom.dart';
import '../widget/onboarding/custom_slider.dart';
import '../widget/onboarding/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor
        ,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: Responsive.isMobile(context) ? 5 : 9,
                // flex: Responsive.isMobile(context) ? 3 : 8,
                child: CustomSliderOnboarding(),
              ),
              Expanded(
                  flex: Responsive.isMobile(context) ? 1 : 3,
                  // flex: Responsive.isMobile(context) ? 1 : 3,
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      // Spacer(flex: 1,),
                      CustomDotControllerOnboarding(),
                      Spacer(flex: 2,),
                      CustomBottomOnboarding()
                    ],
                  ))
            ],
          ),
        ));
  }
}
