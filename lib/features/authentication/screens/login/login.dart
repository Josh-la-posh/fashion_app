import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/widgets/auth_back_button.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/devices/device_utility.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import '../signup/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Container(
        height: THelperFunctions.screenHeight(),
        child: Stack(
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
                      'Login to your account',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: TSizes.spaceBtwElements * 2),
                    const LoginForm(),
                    const SizedBox(height: TSizes.spaceBtwElements * 2),
                    Center(
                      child: Container(
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
                        )
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
                          onPressed: (){Get.to(() => const SignupScreen());},
                          child: Text(
                            'Sign up',
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
      ),
    );
  }
}
