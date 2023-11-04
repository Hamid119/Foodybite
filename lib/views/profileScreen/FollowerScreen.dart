import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../utils/appColors.dart';
import '../../widgets/buildAppBar.dart';
import '../../widgets/customerUserListTile.dart';

class FollowerScreen extends StatefulWidget {
  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  bool isFollower = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Followers', color: kDarkTextColor),
      body: Container(
        height: Get.height * 1,
        child: ListView.builder(
            itemCount: notificationModel.length,
            itemBuilder: (context, i) {
              return userFollowersListTiles(i, isFollower);
            }),
      ),
    );
  }
}
