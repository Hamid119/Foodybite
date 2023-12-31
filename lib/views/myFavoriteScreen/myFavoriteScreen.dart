import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../utils/appColors.dart';
import '../../widgets/buildAppBar.dart';
import '../../widgets/restaurentCardListView.dart';

class MyFavoriteScreen extends StatefulWidget {
  @override
  _MyFavoriteScreenState createState() => _MyFavoriteScreenState();
}

class _MyFavoriteScreenState extends State<MyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: 'My Favorite',
          color: kDarkTextColor,
          actionIcon2: Icons.search),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
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
    );
  }
}
