import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../widgets/buildAppBar.dart';
import '../../widgets/displayTextField.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Change Password', color: kDarkTextColor),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            displayTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/Group 320.svg',
                  height: Get.height * 0.002,
                  width: Get.width * 0.01,
                ),
              ),
              labelText: 'Current Password',
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            displayTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/Group 320.svg',
                  height: Get.height * 0.002,
                  width: Get.width * 0.01,
                ),
              ),
              labelText: 'New Password',
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            displayTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/Group 320.svg',
                  height: Get.height * 0.002,
                  width: Get.width * 0.01,
                ),
              ),
              labelText: 'Conform Password',
            ),
          ],
        ),
      ),
    );
  }
}
