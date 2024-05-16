import 'package:electronic_payment_app/core/constant/AppColor.dart';
import 'package:electronic_payment_app/core/constant/constants.dart';
import 'package:flutter/material.dart';

import '../../widget/payment/AppBar.Payment.dart';
import '../../widget/payment/AppBar.dart';
import '../../widget/payment/BodyPayment.dart';

import '../profile/profile_screen.dart';

class HomePayment extends StatelessWidget {
  const HomePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const CustomAppBar(),
          backgroundColor: AppColor.blue2,
          automaticallyImplyLeading: false,
        ),
        drawer: const Drawer(child: ProfileScreen()),
        body: Container(
          color: AppColor.blue2,
          child: SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                AppBarPayment(),
                const SizedBox(height: Constants.sizeSpaceHeight),
                const BodyPayment(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
