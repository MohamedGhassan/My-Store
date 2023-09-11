import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colorapp.dart';
import '../../responsive.dart';

class CustomButtomLang extends StatelessWidget {
  final String textbuttom;
  void Function()? onPressed;
  CustomButtomLang({super.key, required this.textbuttom, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.isMobile(context)
          ?  EdgeInsets.symmetric(horizontal: 130.h)
          : EdgeInsets.symmetric(horizontal: 130.h),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          textbuttom,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        color: AppColor.primaryColor,
        textColor: AppColor.white,
      ),
    );
  }
}
