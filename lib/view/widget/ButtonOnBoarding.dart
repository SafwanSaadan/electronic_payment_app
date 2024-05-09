// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:electronic_payment_app/controller/onBoardingController.dart';
import 'package:electronic_payment_app/core/constant/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasource/bg_data.dart';
import '../../data/datasource/static/static.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  final tab;
  const CustomButtonOnBoarding({super.key, this.tab});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Column(children: [
        Container(
          width: 400,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgList[0]), fit: BoxFit.fill, opacity: 0.8),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: MaterialButton(
            onPressed: () {
              if (controller.currentPage >= onBoardingList.length - 1) {
                if (tab == 0) {
                  Get.offNamed(AppRoutes.login);
                  // Navigator.of(context).pushReplacementNamed('/login');
                }
              } else {
                controller.next();
              }
            },
            child: controller.currentPage >= onBoardingList.length - 1
                ? Text(
                    'فتح التطبيق',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                : Text(
                    'التالي',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          child: controller.currentPage >= onBoardingList.length - 1
              ? null
              : Container(
                  width: 400,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(bgList[6]),
                        fit: BoxFit.fill,
                        opacity: 0.8),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      controller.nextEnd();
                    },
                    child: Text(
                      'تخطي',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
        ),
      ]),
    );
  }
}
