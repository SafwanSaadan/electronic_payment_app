// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingController extends GetxController {
  int selectedIndex = 0;
  bool showOption = false;
  bool isPassword = true;
  bool chack = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void visibilityOff() {
    isPassword = !isPassword;
    update();
  }

  void checkedbox() {
    chack = !chack;
    update();
  }

  void upadte() {
    update();
  }
}
