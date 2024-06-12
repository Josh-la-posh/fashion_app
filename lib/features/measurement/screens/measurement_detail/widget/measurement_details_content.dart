import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/widget/measurement_image.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/widget/measurement_item.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';

class MeasurementDetailContent extends StatelessWidget {
  const MeasurementDetailContent({super.key});
  static const String emptyMeasurement = "assets/icons/measurement/noMeasurement.png";

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MeasurementImageWidget(),
          ],
        ),
        Positioned(
          right: TSizes.paddingSize,
          top: 75,
          bottom: 0,
          child: MeasurementItem()
        )
      ],
    );
  }
}
