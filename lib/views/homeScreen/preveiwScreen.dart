import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../widgets/buildAppBar.dart';

class PreViewScreen extends StatefulWidget {
  String image;
  PreViewScreen(this.image);
  @override
  _PreViewScreenState createState() => _PreViewScreenState();
}

class _PreViewScreenState extends State<PreViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Pre View'),
      backgroundColor: Colors.black,
      body: Container(
        child: PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  height: Get.height * 0.5,
                  width: Get.width,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
