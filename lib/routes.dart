import 'package:electronic_payment_app/view/screen/payment/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/middleware/OnBoardingMiddleware.dart';
import 'core/constant/AppRoutes.dart';
import 'view/screen/home.dart';
import 'view/screen/login_screen.dart';
import 'view/screen/onBoarding.dart';
import 'view/screen/signup_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => LoginScreen(),
};

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoarding(),
      middlewares: [OnBoardingMiddleware()]),
  GetPage(name: AppRoutes.login, page: () => LoginScreen()),
  GetPage(name: AppRoutes.signup, page: () => SignUp()),
  GetPage(name: AppRoutes.home, page: () => Home()),
  GetPage(name: AppRoutes.homePayment, page: () => const HomePayment()),
];
