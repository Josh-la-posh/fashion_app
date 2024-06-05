import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/login.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import 'package:sytle_to_perfection/utils/themes/custom_themes/elevated_button_theme.dart';

class OnboardingFinalScreen extends StatelessWidget {
  const OnboardingFinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: darkMode ? TColors.black : TColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: THelperFunctions.screenHeight() * 0.15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Let\'s you in',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: THelperFunctions.screenHeight() * 0.1,),
                SizedBox(
                  height: 54,
                  width: 345,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(side: BorderSide.none)
                    ),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: const Image(image: AssetImage(TImages.google)),
                          ),
                          SizedBox(width: 15,),
                          RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: const <TextSpan> [
                                    TextSpan(
                                        text: 'Continue with Google',
                                        style: TextStyle(
                                            fontSize: TSizes.fontSize20
                                        )
                                    )
                                  ]
                              )
                          ),
                        ],
                      ),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwElements),
                SizedBox(
                  height: 54,
                  width: 345,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(side: BorderSide.none)
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: const Image(image: AssetImage(TImages.facebook)),
                        ),
                        SizedBox(width: 15,),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const <TextSpan> [
                                  TextSpan(
                                      text: 'Continue with Google',
                                      style: TextStyle(
                                          fontSize: TSizes.fontSize20
                                      )
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwElements * 1.5),
                Container(
                  width: 150,
                  child: Image(image: AssetImage(TImages.onboardingDivider)),
                ),
                SizedBox(height: TSizes.spaceBtwElements * 1.5),
                Container(
                    height: 40,
                    width: 345,
                    child: TElevatedButton(
                        onTap: (){
                          Get.to(() => const LoginScreen());
                        },
                        buttonText: 'SIGN IN WITH PASSWORD'
                    )
                ),
                SizedBox(height: TSizes.spaceBtwElements),
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
                      onPressed: (){},
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
      ),
    );
  }
}
