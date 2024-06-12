import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

class MeasurementImageWidget extends StatelessWidget {
  const MeasurementImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: THelperFunctions.screenHeight() * 0.6,
      // width: THelperFunctions.screenWidth(),
      child: Image(image: AssetImage(TImages.measurementImage)),
    );
  }
}
