import 'package:flutter/material.dart';

import '../utils/appColors.dart';
import '../utils/appConst.dart';

Container customAppBar(IconData icon, String pageName, String title) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon),
        Text(
          pageName,
          style: kTextStyle.copyWith(
            color: kDarkTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Text(
          title,
          style: kTextStyle.copyWith(
            color: kDarkTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
