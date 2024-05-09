// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onBoardingController.dart';
import '../widget/ButtonOnBoarding.dart';
import '../widget/DotContoller.dart';
import '../widget/SliderOnBoarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    int tab = 0;
    Get.put(OnBoardingControllerImp());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
              onTap: (value) {
                tab = value;
                print(tab);
              },
              tabs: const [
                Tab(
                  child: Text("تطبيق الدفع"),
                ),
                Tab(
                  child: Text("تطبيق المحاسبي"),
                )
              ]),
          body: const TabBarView(children: [
            SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomSliderOnBoarding(tab: 0),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CustomDotOnBoarding(),
                        CustomButtonOnBoarding(tab:0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomSliderOnBoarding(tab: 1),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CustomDotOnBoarding(),
                        CustomButtonOnBoarding(tab:1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
