import 'package:electronic_payment_app/core/constant/AppColor.dart';
import 'package:electronic_payment_app/core/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/FloatingController.dart';
import '../../core/constant/AppRoutes.dart';
import '../../data/datasource/bg_data.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final FloatingController controller =
      Get.put(FloatingController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgList[0]),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(Constants.margin),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.white,
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.mobile_friendly,
                                color: AppColor.blue),
                            Text(
                              "تطبيق  الدفع الإلكتروني",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: Constants.margin),
                              child: CircleAvatar(
                                radius: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      bgList[0],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "سداد رصيد وشحن فوري وباقات لجميع شبكات الاتصالات اليمنية . تسديد الهاتف الثابت والانترنت الأرضي . خدمات الشرائح . والعديد من الميزات والخدمات الحصرية والمميزة!",
                                style: Theme.of(context).textTheme.labelSmall,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: Constants.margin),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "إنطلق",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.home);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(Constants.margin),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.white,
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.mobile_friendly,
                                color: AppColor.blue),
                            Text(
                              "التطبيق المحاسبي السحابي",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: Constants.margin),
                              child: const CircleAvatar(
                                radius: 40,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("images/cloud.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "يمكنك تسجيل حساباتك وديونك وعرض تقارير تفصيلية وإجمالية ، ولا تشيل هم حفظ البيانات . نحفظها في سيرفراتنا!  تستطيع إستيرادها بنقرة زر من أي جهاز بسهولة!",
                                style: Theme.of(context).textTheme.labelSmall,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: Constants.margin),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "إنطلق",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
