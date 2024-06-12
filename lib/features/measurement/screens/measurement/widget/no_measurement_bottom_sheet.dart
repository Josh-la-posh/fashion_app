import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';

class NoMeasurementBottomSheetModal extends StatelessWidget {
  const NoMeasurementBottomSheetModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    children: const <TextSpan> [
                      TextSpan(
                          text: 'No measurement saved',
                          style: TextStyle(
                              fontSize: 20
                          )
                      )
                    ]
                )
            ),
            const SizedBox(height: TSizes.spaceBtwElements,),
            Text(
              'Start by adding your first measurements to unlock a world of insights and personalized recommendations.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwElements,),
            SizedBox(
                height: 48,
                child: TElevatedButton(
                    onTap: (){},
                    buttonText: 'BEGIN AI FULL BODY SCAN'
                )
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
                height: 48,
                child: TOutlinedButton(
                    onTap: (){},
                    buttonText: 'INPUT MEASUREMENTS MANUALLY')
            )
          ],
        ),
      ),
    );
  }
}
