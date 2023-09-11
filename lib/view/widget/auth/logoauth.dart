import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_store/constant/imageasset.dart';

class LogoAuth extends StatelessWidget {
   LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo, height: 190.h, fit: BoxFit.cover,);
  }
}
