import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnboardingBack extends StatelessWidget {
  const OnboardingBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        left: 10,
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
              border: Border.all(color: TColors.black)
          ),
          child: IconButton(
            onPressed: () {Get.back();},
            icon: const Icon(Icons.arrow_back_sharp),
          ),
        ));
  }
}