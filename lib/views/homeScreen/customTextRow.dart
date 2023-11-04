import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../utils/appConst.dart';

Row customTextRow(String title, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: kTextStyle.copyWith(
            color: kDarkTextColor,
            fontWeight: FontWeight.w600,
            fontSize: Get.height * 0.02),
      ),
      Text(
        subtitle,
        style: kTextStyle.copyWith(
            color: kTextColor.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            fontSize: Get.height * 0.02),
      ),
    ],
  );
}
