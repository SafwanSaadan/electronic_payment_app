import 'package:flutter/material.dart';

import 'core/constant/AppRoutes.dart';
import 'view/screen/login.dart';
import 'view/screen/login_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const LoginScreen(),
  AppRoutes.login1: (context) => const Login()
};
