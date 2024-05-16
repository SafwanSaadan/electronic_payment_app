// ignore_for_file: implementation_imports, file_names

import 'package:electronic_payment_app/core/constant/AppRoutes.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

import '../../main.dart';

class AuthMiddleware implements GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("id") != null) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }

  @override
  int? get priority => 1;

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

  @override
  set priority(int? priority) {
    priority = 1;
  }
}
