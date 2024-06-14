import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:sytle_to_perfection/utils/constants/sizes.dart';

import '../../../../../../utils/constants/images.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import 'measurement_item.dart';

class MeasurementDetailContent extends StatelessWidget {
  const MeasurementDetailContent({super.key});
  static const String emptyMeasurement = "assets/icons/measurement/noMeasurement.png";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: THelperFunctions.screenHeight() * 0.6,
              child: Image(image: AssetImage(TImages.measurementImage)),
            ),
          ],
        ),
        Positioned(
          right: TSizes.paddingSize,
          top: 75,
          child: MeasurementItem()
        )
      ],
    );
  }
}
