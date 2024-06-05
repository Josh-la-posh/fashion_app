import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/widget/onboardingPage.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/widget/onboarding_back.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/widget/onboarding_next.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                  darkMode: darkMode,
                  image: TImages.onboardingImage1,
                  title: TTexts.onboardingTitle1
              ),
              OnboardingPage(
                  darkMode: darkMode,
                  image: TImages.onboardingImage2,
                  title: TTexts.onboardingTitle2
              ),
              OnboardingPage(
                  darkMode: darkMode,
                  image: TImages.onboardingImage2,
                  title: TTexts.onboardingTitle3
              ),
            ],
          ),
          /// Skip Button
          const OnboardingSkip(),
          /// Next Button
          OnboardingNextButton(),
          /// Back Button
          const OnboardingBack()

        ],
      ),
    );
  }
}

