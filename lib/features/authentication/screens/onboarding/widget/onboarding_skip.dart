import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight() + 22,
        right: 10,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: Text('Skip',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: TColors.textBlack
            ),
          ),
        ));
  }
}