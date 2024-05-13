// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingController extends GetxController {
  int selectedIndex = 0;
  bool showOption = false;
  bool isPassword = true;
  bool chack = false;
  bool removeEye = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fullNameController = TextEditingController();
  final activityController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  void visibilityOff() {
    isPassword = !isPassword;
    update();
  }

  void eyeOn() {
    removeEye = !removeEye;
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
