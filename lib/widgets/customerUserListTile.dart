import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Data/data.dart';
import '../utils/appColors.dart';
import '../utils/appConst.dart';

Padding userFollowersListTiles(int i, bool isFollower) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            child: Image.asset(
              notificationModel[i].image!,
              width: Get.width * 0.16,
            ),
          ),
        ),
        // CircleAvatar(
        //   backgroundImage: AssetImage(
        //     notificationModel[i].image,
        //   ),
        //   radius: 30,
        // ),
        title: Text(
          notificationModel[i].title!,
          style: kTextStyle.copyWith(
              fontSize: Get.height * 0.02,
              fontWeight: FontWeight.bold,
              color: kDarkTextColor),
        ),
        subtitle: Text(
          notificationModel[i].subtitle!,
          style: kTextStyle.copyWith(
              fontSize: Get.height * 0.02,
              fontWeight: FontWeight.bold,
              color: kTextColor),
        ),
        trailing: isFollower
            ? Container(
                height: Get.height * 0.04,
                width: Get.width * 0.16,
                decoration: BoxDecoration(
                    color: kBlue, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Follow',
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: Get.height * 0.02,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            : Container(
                height: Get.height * 0.04,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                    border: Border.all(color: kTextColor),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Unfollow',
                    style: kTextStyle.copyWith(
                        color: kTextColor,
                        fontSize: Get.height * 0.02,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )),
  );
}
