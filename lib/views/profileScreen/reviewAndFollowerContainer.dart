import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../utils/appConst.dart';

Container reviewAndFollowerContainer(String title, String subtitle) {
  return Container(
    child: Column(
      children: [
        Text(
          title,
          style: kTextStyle.copyWith(
              color: kBlue,
              fontSize: Get.height * 0.023,
              fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: kTextStyle.copyWith(
              color: kTextColor,
              fontSize: Get.height * 0.019,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
