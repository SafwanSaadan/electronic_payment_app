// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/AppColor.dart';
import '../../../core/constant/AppRoutes.dart';
import '../../../core/constant/constants.dart';
import '../../../data/datasource/static/static.dart';

class BodyPayment extends StatelessWidget {
  const BodyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColor.white),
          child: ListView.builder(
            itemCount: homeModel.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  i == 0
                      ? Get.toNamed(AppRoutes.login)
                      : Get.toNamed(AppRoutes.home);
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
                            homeModel[i].title!,
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
                                    homeModel[i].image!,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              homeModel[i].body!,
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
              );
            },
          ),
        ),
        GestureDetector(
          onVerticalDragDown: (details) {
            Scaffold.of(context).appBarMaxHeight;
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.white,
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                      blurRadius: 5,
                      color: AppColor.black,
                      spreadRadius: BorderSide.strokeAlignInside)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(
                        Icons.store,
                        color: AppColor.blue,
                        size: 40,
                      ),
                      Text(
                        "متجر",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(
                        Icons.business_sharp,
                        color: AppColor.blue,
                        size: 40,
                      ),
                      Text(
                        "يومياتي",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(
                        Icons.router_outlined,
                        color: AppColor.blue,
                        size: 40,
                      ),
                      Text(
                        "WIFI كبينة ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      const Icon(
                        Icons.sim_card,
                        color: AppColor.blue,
                        size: 40,
                      ),
                      Text(
                        "معرض الشرائح",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
