import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.darkMode,
    required this.image,
    required this.title
  });

  final bool darkMode;
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: THelperFunctions.screenHeight(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
        ),
        child:
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFFFFFF).withOpacity(0),
                  const Color(0XFF252525).withOpacity(0.8),
                  const Color(0XFF000000).withOpacity(1),
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: [0.0, 0.855, 1.0],
                // tileMode: TileMode.decal
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headlineLarge,
                      children: <TextSpan> [
                        TextSpan(
                            text: title,
                            style: TextStyle(
                              color: darkMode ? TColors.textBlack : TColors.textWhite,
                            )
                        )
                      ]
                  )
              ),
              const SizedBox(height: 40,),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: <TextSpan> [
                        TextSpan(
                            text: 'Swipe to go next',
                            style: TextStyle(
                              color: darkMode ? TColors.textBlack : TColors.textWhite,
                            )
                        )
                      ]
                  )
              ),
            ],
          ),
        )

    );
  }
}