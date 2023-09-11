import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colorapp.dart';

// BuildContext? context;
ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",

  /// عشان اتحكم بكمل Text الموجوده فالتطبيق
  textTheme: TextTheme(
    headline1: TextStyle(
        // fontSize: Responsive.isMobile(context!) ? 22.sp : 13.sp,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.black),
    bodyText1: TextStyle(
        // height: 2.h,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 15.sp),
    // fontSize: Responsive.isMobile(context!) ? 15.sp : 10.sp),
    bodyText2: TextStyle(
        // height: 2.h,
        color: AppColor.grey.withOpacity(0.8),
        fontSize: 14.sp),
    // fontSize: Responsive.isMobile(context!) ? 14.sp : 9.sp),
    // bodySmall: TextStyle(
    //   // height: 2.h,
    //     color: AppColor.grey,
    //     fontWeight: FontWeight.bold,
    //     fontSize: Responsive.isMobile(context)
    //         ? 12.sp
    //         : 10.sp),
  ),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",

  /// عشان اتحكم بكمل Text الموجوده فالتطبيق
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 22.sp,
        // fontSize: Responsive.isMobile(context!) ? 22.sp : 13.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.black),
    bodyText1: TextStyle(
        // height: 2.h,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 15.sp),
    // fontSize: Responsive.isMobile(context!) ? 15.sp : 10.sp),
    bodyText2: TextStyle(
        // height: 2.h,
        color: AppColor.grey.withOpacity(0.8),
        fontSize: 14.sp),
    // fontSize: Responsive.isMobile(context!) ? 14.sp : 9.sp),
  ),
  primarySwatch: Colors.blue,
);


