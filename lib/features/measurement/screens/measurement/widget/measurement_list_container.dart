import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/measurement_detail.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class MeasurementListContainer extends StatelessWidget {
  const MeasurementListContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => MeasurementDetailScreen(title: 'Tunbosun',));
      },
      child: Container(
        height: 96,
        width: 187.5,
        decoration: BoxDecoration(
            color: TColors.searchBarBackground,
            borderRadius: BorderRadius.circular(12)
        ),
        child: const Stack(
          children: [
            Positioned(
              bottom: 8,
              left: 12,
              child: Text('Tunbosun',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: TSizes.fontWeight400,
                    fontFamily: TTexts.fontFamily,
                    height: 1.3,
                    color: TColors.primary
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}