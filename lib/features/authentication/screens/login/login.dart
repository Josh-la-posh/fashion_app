import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/widgets/auth_back_button.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
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
      body: SizedBox(
        height: THelperFunctions.screenHeight(),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthBackButton(darkMode: darkMode),
                    SizedBox(height: THelperFunctions.screenHeight() * 0.04),
                    Text(
                      'Login to your account',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: THelperFunctions.screenHeight() * 0.04),
                    const LoginForm(),
                    SizedBox(height: THelperFunctions.screenHeight() * 0.04),
                    const Center(
                      child: SizedBox(
                        width: 150,
                        child: Image(image: AssetImage(TImages.onboardingDivider)),
                      ),
                    ),
                    SizedBox(height: THelperFunctions.screenHeight() * 0.04),
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
                    SizedBox(height: THelperFunctions.screenHeight() * 0.1),
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
