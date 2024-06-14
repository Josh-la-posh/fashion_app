import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SpotlightWidget extends StatelessWidget {
  const SpotlightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Spotlight',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: TSizes.spaceBtwButtons,),
        Container(
          width: double.infinity,
          height: 128,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: TColors.black
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(
          'Nike',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: TSizes.sm,),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                      text: 'Sport, Casual',
                      style: TextStyle(
                        color: darkMode ? TColors.white : TColors.itemNameColor,
                        fontFamily: 'Manrope',
                      )
                  )
                ]
            )
        ),
      ],
    );
  }
}