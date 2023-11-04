import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/appColors.dart';

Material ratingContainer(String rate) {
  return Material(
    borderRadius: BorderRadius.circular(8),
    elevation: 0.8,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Image.asset(
            'assets/images/star.png',
            height: Get.height * 0.014,
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Text(
            rate,
            style: TextStyle(
                color: kDarkTextColor,
                fontWeight: FontWeight.w600,
                fontSize: Get.height * 0.012
            ),
          ),
        ],
      ),
    ),
  );
}
