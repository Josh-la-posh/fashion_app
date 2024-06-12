import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/utils/devices/device_utility.dart';

import '../../../utils/constants/images.dart';

class AppbarWithActionButton extends StatelessWidget implements PreferredSizeWidget {
  final String title, actionImage;
  final VoidCallback actionOnpressed;
  const AppbarWithActionButton({super.key, required this.title, required this.actionImage, required this.actionOnpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {Get.back();}, icon: const Image(image: AssetImage(TImages.arrowLeft))),
        actions: <Widget>[
          IconButton(
              onPressed: actionOnpressed,
              icon: Image(image: AssetImage(actionImage)))
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
