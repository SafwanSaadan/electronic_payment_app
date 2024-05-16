import 'package:flutter/material.dart';

import '../../../core/constant/AppColor.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: const Icon(
                Icons.account_circle_rounded,
                color: AppColor.grey,
              ),
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: const Icon(
                Icons.notification_add,
                color: AppColor.grey,
              ),
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: const Icon(
                Icons.settings,
                color: AppColor.grey,
              ),
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: const Icon(
                Icons.help,
                color: AppColor.grey,
              ),
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: const Icon(
                Icons.logout,
                color: AppColor.grey,
              ),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
