import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/data/provider/measurement_provider.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';

class AddToButtons extends StatelessWidget {
  final MeasurementProvider measurementProvider;
  const AddToButtons({super.key, required this.measurementProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: TOutlinedButton(
                    onTap: (){},
                    buttonText: 'Add to Drawer'
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: SizedBox(
                height: 48,
                child: TOutlinedButton(
                    onTap: (){},
                    buttonText: 'Post'
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 48,
          child: TElevatedButton(
              onTap: () => measurementProvider.setAddToCart(),
              buttonText: 'Add to cart'
          ),
        ),
      ],
    );
  }
}
