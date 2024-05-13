import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/FloatingController.dart';
import '../../../core/constant/AppColor.dart';

import '../../../data/datasource/bg_data.dart';

class AppBarPayment extends StatelessWidget {
  AppBarPayment({super.key});

  final FloatingController controller =
      Get.put(FloatingController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: GetBuilder<FloatingController>(
                  builder: (controller) => CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(bgList[controller.selectedIndex]),
                      )),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColor.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        icon: const Icon(Icons.notifications,
                            color: AppColor.white),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.white, width: 1),
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.red1),
                      child: const Text("34",
                          style:
                              TextStyle(color: AppColor.white, fontSize: 13)),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColor.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: AppColor.white),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          ],
        ),
        Text(
          "الرصيد المتاح",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        GetBuilder<FloatingController>(
          builder: (controller) => Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: controller.removeEye == false
                      ? const Icon(Icons.visibility_off, color: Colors.white)
                      : const Icon(Icons.remove_red_eye, color: Colors.white),
                  onPressed: () {
                    controller.eyeOn();
                  },
                ),
                const SizedBox(width: Checkbox.width),
                Container(
                  child: controller.removeEye == false
                      ? const Text("*******",
                          style: TextStyle(color: AppColor.white, fontSize: 26))
                      : const Text(
                          "\$ 1000.00",
                          style: TextStyle(color: AppColor.white, fontSize: 16),
                        ),
                ),
                const SizedBox(width: Checkbox.width),
                const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
