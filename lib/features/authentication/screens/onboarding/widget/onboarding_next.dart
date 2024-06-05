import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/authentication/controllers_onboarding/onboarding_controller.dart';
import '../../../../../utils/constants/colors.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 25,
        right: 25,
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: TColors.white.withOpacity(0.7)),
          child: const Icon(Icons.keyboard_arrow_right, color: TColors.black,),
        )
    );
  }
}