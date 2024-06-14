import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';

class TailorAddressWidget extends StatelessWidget {
  const TailorAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TSpacingStyle.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const [
                    TextSpan(
                        text: 'Addresses',
                        style: TextStyle(
                            fontSize: TSizes.fontSize20
                        )
                    )
                  ]
              )
          ),
          SizedBox(height: 30,),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.titleMedium,
                          children: const [
                            TextSpan(
                                text: '3910 Crim Lane',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize16
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 10,),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const [
                            TextSpan(
                                text: 'Greendale County, Colorado. Zip Code 410348',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize16,
                                    color: TColors.addressText
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 5,),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: const [
                            TextSpan(
                                text: 'Ava Johnson - Home',
                                style: TextStyle(
                                    color: Color(0xFF868687)
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 20,),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
