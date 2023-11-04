import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../utils/appColors.dart';
import '../../utils/appConst.dart';
import '../../widgets/buildAppBar.dart';
import '../../widgets/customerUserListTile.dart';

class FindFriendScreen extends StatefulWidget {
  @override
  _FindFriendScreenState createState() => _FindFriendScreenState();
}

class _FindFriendScreenState extends State<FindFriendScreen> {
  bool isFollower = true;
  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Find Friend',
        color: kDarkTextColor,
        actionIcon2: Icons.search,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                height: Get.height * 0.05,
                width: Get.width,
                color: kTextColor.withOpacity(0.2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account',
                    style: kTextStyle.copyWith(color: kTextColor, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: Get.height * 1,
                child: ListView.builder(
                    itemCount: notificationModel.length,
                    itemBuilder: (context, i) {
                      return userFollowersListTiles(i, isFollower);
                    }),
              ),
              Container(
                height: Get.height * 1,
                child: ListView.builder(
                    itemCount: notificationModel.length,
                    itemBuilder: (context, i) {
                      return userFollowersListTiles(i, isFollowing);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
