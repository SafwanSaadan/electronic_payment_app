// ignore_for_file: implementation_imports, file_names

import 'package:electronic_payment_app/core/constant/AppRoutes.dart';
import 'package:electronic_payment_app/main.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class AuthMiddleware implements GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("username") != null) {
      return const RouteSettings(name: AppRoutes.home);
    }
    return null;
  }

  @override
  int? priority;

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    throw UnimplementedError();
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    throw UnimplementedError();
  }

  @override
  Widget onPageBuilt(Widget page) {
    throw UnimplementedError();
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    throw UnimplementedError();
  }

  @override
  void onPageDispose() {}

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    throw UnimplementedError();
  }
}
