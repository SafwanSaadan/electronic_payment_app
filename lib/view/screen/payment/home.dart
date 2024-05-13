import 'package:electronic_payment_app/core/constant/AppColor.dart';
import 'package:electronic_payment_app/core/constant/constants.dart';
import 'package:flutter/material.dart';



import '../../widget/payment/AppBar.Payment.dart';
import '../../widget/payment/BodyPayment.dart';

class HomePayment extends StatelessWidget {
  const HomePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.blue2,
        child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppBarPayment(),
              const SizedBox(height: Constants.sizeSpaceHeight),
              const BodyPayment()
            ],
          ),
        ),
      ),
    );
  }
}
