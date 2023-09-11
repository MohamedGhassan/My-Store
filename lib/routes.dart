import 'package:flutter/material.dart';
import 'package:my_store/constant/routes.dart';
import 'package:my_store/view/screen/auth/forget_password/forget_password.dart';
import 'package:my_store/view/screen/auth/forget_password/resetpassword.dart';
import 'package:my_store/view/screen/auth/forget_password/success_resetpssword.dart';
import 'package:my_store/view/screen/auth/forget_password/verifycodesignup.dart';
import 'package:my_store/view/screen/auth/forget_password/vreifycode.dart';
import 'package:my_store/view/screen/auth/signup.dart';
import 'package:my_store/view/screen/auth/success_signup.dart';
import 'package:my_store/view/screen/language.dart';
import 'package:my_store/view/screen/onboarding.dart';
import '../view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routess = {
  AppRoute.onboarding : (context) => const OnBoarding(),
  AppRoute.login : (context) => const Login(),
  AppRoute.signup : (context) => const SignUp(),
  AppRoute.forgetPassword : (context) => const ForgetPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),
  AppRoute.resetPassword : (context) => const ResetPassword(),
  AppRoute.successSignup : (context) => const SuccessSignUp(),
  AppRoute.successResetPass : (context) => const SuccessResetPassword(),
  // AppRoute.checkemail : (context) => const CheckEmail(),
  AppRoute.language : (context) => const MyLanguage(),
  AppRoute.verifyCodeSignup : (context) => const VerifyCodeSignUp(),
  // 'homw' : (context) => Homw(),
};
// List<GetPage<dynamic>>? routes = [
//   GetPage(
//       name: "/", page: () => const MyLanguage(), middlewares: [MyMiddleWare()]),
//   GetPage(name: AppRoute.loginOrsignup, page: () => const Start()),
//   GetPage(name: AppRoute.login, page: () => const Login()),
//   GetPage(name: AppRoute.signup, page: () => const SignUp()),
//   GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
//   GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
//   GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
//   GetPage(name: AppRoute.sucessSignup, page: () => const SuccessSignUp()),
//   GetPage(name: AppRoute.sucessResetPass, page: () => const SuccessResetPassword()),
//   GetPage(
//       name: AppRoute.verifyCodeSignup, page: () => const VerifyCode()),
//   GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
// ];