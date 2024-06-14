import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TailorReviewWidget extends StatelessWidget {
  const TailorReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: TSpacingStyle.horizontalPadding /2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                        text: 'Reviews',
                        style: TextStyle(
                            color: darkMode ? TColors.white : TColors.primary,
                            fontSize: TSizes.fontSize20
                        )
                    )
                  ]
              )
          ),
          const SizedBox(height: 30,),

          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (_, index) => Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFFFD232), size: 27,),
                        Icon(Icons.star, color: Color(0xFFFFD232), size: 27,),
                        Icon(Icons.star, color: Color(0xFFFFD232), size: 27,),
                        Icon(Icons.star, color: Color(0xFFFFD232), size: 27,),
                        Icon(Icons.star, color: Color(0xFFFFD232), size: 27,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                  text: 'Fantastic barbers! Stuart is brilliant as always. Very professional and does an amazing haircut',
                                  style: TextStyle(
                                      color: darkMode ? TColors.white : const Color(0xFF000B1C),
                                      fontFamily: TTexts.fontFamilyInter
                                  )
                              )
                            ]
                        )
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.black
                          ),
                        ),
                        const SizedBox(width: 5,),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodySmall,
                                children: [
                                  TextSpan(
                                      text: 'Seam B.',
                                      style: TextStyle(
                                          color: darkMode ? TColors.white : const Color(0xFF000B1C),
                                          fontFamily: TTexts.fontFamilyInter
                                      )
                                  )
                                ]
                            )
                        ),
                        const SizedBox(width: 10,),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodySmall,
                                children: [
                                  TextSpan(
                                      text: 'Jun 10, 2022.',
                                      style: TextStyle(
                                          color: darkMode ? TColors.white : const Color(0xFF000B1C).withOpacity(0.6),
                                          fontFamily: TTexts.fontFamilyInter
                                      )
                                  )
                                ]
                            )
                        ),

                      ],
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
