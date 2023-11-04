import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../utils/appColors.dart';
import '../../widgets/buildAppBar.dart';
import '../../widgets/customerUserListTile.dart';

class FollowingScreen extends StatefulWidget {
  @override
  _FollowingScreenState createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Following', color: kDarkTextColor),
      body: Container(
        height: Get.height * 1,
        child: ListView.builder(
            itemCount: notificationModel.length,
            itemBuilder: (context, i) {
              return userFollowersListTiles(i, isFollowing);
            }),
      ),
    );
  }
}
