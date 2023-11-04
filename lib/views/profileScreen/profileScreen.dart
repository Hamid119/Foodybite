import 'package:flutter/material.dart';
import 'package:food_bit_app/views/profileScreen/reviewAndFollowerContainer.dart';
import 'package:food_bit_app/views/profileScreen/settingScreen.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../utils/appColors.dart';
import '../../utils/appConst.dart';
import '../../widgets/restaurentCardListView.dart';
import 'FollowerScreen.dart';
import 'FollowingScreen.dart';
import 'ReviewScreen.dart';
import 'editProfileScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'My Profile',
                  style: kTextStyle.copyWith(
                      color: kDarkTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Image.asset(
                      'assets/images/person6.jpg',
                      width: Get.width * 0.25,
                    ),
                  ),
                ),
                // CircleAvatar(
                //   radius: Get.height * 0.065,
                //   backgroundImage: AssetImage('assets/images/person6.jpg'),
                // ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'John Williams',
                  style: kTextStyle.copyWith(
                      color: kDarkTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'john.williams@gmail.com',
                  style: kTextStyle.copyWith(
                    color: kTextColor,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => ReviewScreen());
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (c) => ReviewScreen()));
                        },
                        child: reviewAndFollowerContainer('250', 'Review')),
                    Container(
                      height: Get.height * 0.05,
                      child: VerticalDivider(
                        color: kTextColor.withOpacity(0.3),
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => FollowerScreen());
                        },
                        child: reviewAndFollowerContainer('100K', 'Followers')),
                    Container(
                      height: Get.height * 0.05,
                      child: VerticalDivider(
                        color: kTextColor.withOpacity(0.3),
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => FollowingScreen());
                        },
                        child: reviewAndFollowerContainer('30', 'Following')),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(8),
                        color: kBlue,
                        elevation: 2,
                        child: Container(
                          height: Get.height * 0.065,
                          width: Get.width * 0.37,
                          child: MaterialButton(
                            onPressed: () {
                              Get.to(() => EditProfileScreen());
                            },
                            child: Text(
                              'Edit Profile',
                              textAlign: TextAlign.center,
                              style: kTextStyle.copyWith(
                                  letterSpacing: 1,
                                  fontSize: Get.height * 0.023,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: kTextColor.withOpacity(0.2))),
                        child: MaterialButton(
                            onPressed: () {
                              Get.to(() => SettingScreen());
                            },
                            child: Text(
                              'Settings',
                              textAlign: TextAlign.center,
                              style: kTextStyle.copyWith(
                                  letterSpacing: 1,
                                  color: kTextColor,
                                  fontSize: Get.height * 0.025,
                                  fontWeight: FontWeight.w600),
                            )),
                        height: Get.height * 0.065,
                        width: Get.width * 0.37,
                      ),
                    ],
                  ),
                ),
                // Divider(
                //   color: Colors.black12,
                //   thickness: 2,
                // ),
                Container(
                  //  margin: EdgeInsets.only(left: Get.width * 0.02),
                  height: Get.height * 1,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: recipiesModel.length,
                      itemBuilder: (context, i) {
                        return restaurantCardListView(i, context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
