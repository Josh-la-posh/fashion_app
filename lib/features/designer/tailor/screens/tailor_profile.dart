import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/divider.dart';
import 'package:sytle_to_perfection/features/designer/tailor/screens/widgets/tailor_address.dart';
import 'package:sytle_to_perfection/features/designer/tailor/screens/widgets/tailor_review.dart';
import 'package:sytle_to_perfection/features/designer/tailor/screens/widgets/tailor_tags.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TailorProfileScreen extends StatelessWidget {
  const TailorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.scaffoldPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 103,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(103),
                      color: TColors.selectBg
                    ),
                  ),
                  const SizedBox(height: 20,),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headlineLarge,
                          children: [
                            TextSpan(
                                text: 'Ava Johnson',
                                style: TextStyle(
                                    color: darkMode ? TColors.white : const Color(0xFF3E3E40),
                                    fontSize: TSizes.fontSize32
                                )
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 15,),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                                text: '@avajohnson',
                                style: TextStyle(
                                  color: darkMode ? TColors.white : TColors.itemNameColor,
                                )
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48,
                        width: 160,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: TColors.dividerBg,
                            ),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(
                                      text: '10 Following',
                                      style: TextStyle(
                                          color: darkMode ? TColors.white : const Color(0xFF3E3E40),
                                          fontWeight: TSizes.fontWeight600
                                      )
                                  )
                                ]
                            )
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        width: 55,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF0F0F0),
                            border: Border.all(
                              color: TColors.dividerBg,
                            ),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyMedium,
                                    children: [
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: darkMode ? TColors.white : const Color(0xFF3C3C3C),
                                            fontWeight: TSizes.fontWeight500,
                                            fontFamily: TTexts.fontFamilyPoppins
                                          )
                                      )
                                    ]
                                )
                            ),
                            const Icon(Icons.star, color: Color(0xFFFFD232), size: 27,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
              Container(
                height: 92,
                padding: TSpacingStyle.horizontalPadding,
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Color(0xFFDBDBDB),
                          width: 1,
                        ),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.titleMedium,
                            children: const [
                              TextSpan(
                                  text: 'My orders and messages',
                                  style: TextStyle(
                                      fontSize: 16
                                  )
                              )
                            ]
                        )
                    ),
                    const SizedBox(
                      width: 52,
                      child: Image(image: AssetImage(TImages.cartSearch)),
                    )
                  ],
                ),
              ),
              Container(
                height: 56,
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFDBDBDB),
                        width: 1,
                      ),
                    )
                ),
                child: ListTile(
                  contentPadding: TSpacingStyle.horizontalPadding,
                  onTap: () {},
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const [
                            TextSpan(
                                text: 'Reviews',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize20
                                )
                            )
                          ]
                      )
                              ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 30,)
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const TailorReviewWidget(),
              const SizedBox(height: 20,),
              Container(
                height: 56,
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFDBDBDB),
                        width: 1,
                      ),
                    )
                ),
                child: ListTile(
                  contentPadding: TSpacingStyle.horizontalPadding,
                  onTap: () {},
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: const [
                                TextSpan(
                                    text: 'Tags',
                                    style: TextStyle(
                                        fontSize: TSizes.fontSize20
                                    )
                                )
                              ]
                          )
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 30,)
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: TSpacingStyle.horizontalPadding,
                child: TailorTagWidget(),
              ),
              const SizedBox(height: 20,),
              const DividerWidget(),
              const SizedBox(height: 30,),
              const TailorAddressWidget(),
              const SizedBox(height: 30,),
              Container(
                height: 48,
                padding: TSpacingStyle.horizontalPadding,
                child: TElevatedButton(
                    onTap: () {},
                    buttonText: 'Select'
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
