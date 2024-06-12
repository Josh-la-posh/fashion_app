import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/widget/item_widget.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

class MeasurementItem extends StatelessWidget {
  const MeasurementItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: THelperFunctions.screenWidth() * 0.4,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: TColors.secTextWhite,
        ),
        child: const Column(
          children: [
            MeasurementDetailItemWidget(
            position: 'A',
                type: 'Neck (N)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'B',
                type: 'Chest (C)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'C',
                type: 'Waist (W)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'D',
                type: 'Wide (W)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'E',
                type: 'Thigh (T)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'F',
                type: 'Leg (L)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'G',
                type: 'Hands (H)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'H',
                type: 'Shoulder (S)',
                value: '32 inches'
            ),
            SizedBox(height: 25,),
            MeasurementDetailItemWidget(
                position: 'I',
                type: 'Elbow (E)',
                value: '32 inches'
            ),
          ],
        ),
      ),
    );
  }
}

