import 'package:electronic_payment_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/FloatingController.dart';
import '../../../../data/datasource/bg_data.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic({
    super.key,
  });

  final FloatingController controller =
      Get.put(FloatingController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(bgList[controller.selectedIndex]),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.camera_alt,
                  color: AppColor.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
