import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';

class NewMeasurementDetailContainer extends StatelessWidget {
  final String title, note, measurement, image;
  const NewMeasurementDetailContainer({
    super.key, required this.title, required this.note, required this.measurement, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 32, bottom: 32, right: 0, left: 24),
      decoration: BoxDecoration(
          color: TColors.secTextWhite,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: title,
                              style: TextStyle(
                                  fontWeight: TSizes.fontWeight500,
                                  color: TColors.primary
                              )
                          )
                        ]
                    )
                ),
                SizedBox(height: TSizes.md,),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                              text: note,
                              style: TextStyle(
                                  fontSize: TSizes.fontSize14,
                                  color: TColors.itemNameColor
                              )
                          )
                        ]
                    )
                ),
                SizedBox(height: TSizes.md,),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: measurement,
                              style: TextStyle(
                                  fontSize: TSizes.fontSize20,
                                  color: TColors.primary
                              )
                          )
                        ]
                    )
                )
              ],
            ),
          ),
          SizedBox(width: TSizes.md,),
          Row(
            children: [
              Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                    color: TColors.imageBackground,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill
                    )
                ),
              ),
              SizedBox(width: 9,),
              Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                    color: TColors.imageBackground,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(TImages.onboardingImage1),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}