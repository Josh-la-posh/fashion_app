import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/login.dart';
import 'package:sytle_to_perfection/features/authentication/screens/signup/widget/signup_form.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/widgets/auth_back_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthBackButton(darkMode: darkMode),
                  const SizedBox(height: TSizes.spaceBtwElements * 2),
                  Text(
                    'Create your Account',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: TSizes.spaceBtwElements * 2),
                  const SignupForm(),
                  const SizedBox(height: TSizes.spaceBtwElements * 2),
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: const Image(image: AssetImage(TImages.onboardingDivider)),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwElements * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            border: Border.all(color: darkMode ? TColors.white : TColors.borderColor),
                          ),
                          child: const Image(image: AssetImage(TImages.google))
                      ),
                      const SizedBox(width: TSizes.spaceBtwElements),
                      Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            border: Border.all(color: darkMode ? TColors.white : TColors.borderColor),
                          ),
                          child: const Image(image: AssetImage(TImages.facebook))
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwElements * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: <TextSpan> [
                                TextSpan(
                                    text: 'Don\'t have an account? ',
                                    style: TextStyle(
                                        color: TColors.textBlack.withOpacity(0.4)
                                    )
                                )
                              ]
                          )
                      ),
                      TextButton(
                        onPressed: (){Get.to(() => const LoginScreen());},
                        child: Text(
                          'Sign In',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
