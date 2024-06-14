import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Container(
      height: 85,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: TColors.secTextWhite,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(
        //   color: Color(0xFFD9D9D9),
        //   width: 1
        // )
      ),
      child: Row(
        children: [
          SizedBox(
            width: 52,
            child: Image(image: AssetImage(TImages.noImage)),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                            text: 'Bershka Mom Jeans',
                            style: TextStyle(
                                color: darkMode ? TColors.white : TColors.primary,
                                fontFamily: 'Manrope',
                                fontWeight: TSizes.fontWeight700
                            )
                        )
                      ]
                  )
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                                text: 'Current Order',
                                style: TextStyle(
                                    color: darkMode ? TColors.white : TColors.selectBg,
                                    fontFamily: 'Manrope',
                                    fontWeight: TSizes.fontWeight600
                                )
                            )
                          ]
                      )
                  ),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                                text: ' - Arrival is. Apr 14',
                                style: TextStyle(
                                    color: darkMode ? TColors.white : TColors.selectBg,
                                    fontFamily: 'Manrope',
                                )
                            )
                          ]
                      )
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
