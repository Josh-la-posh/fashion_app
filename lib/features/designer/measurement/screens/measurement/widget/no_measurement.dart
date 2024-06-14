import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import 'no_measurement_bottom_sheet.dart';

class NoMeasurementScreen extends StatefulWidget {
  const NoMeasurementScreen({super.key});

  @override
  State<NoMeasurementScreen> createState() => _NoMeasurementScreenState();
}

class _NoMeasurementScreenState extends State<NoMeasurementScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
        backgroundColor: Colors.white,
          context: context,
          builder: (cdx) => const NoMeasurementBottomSheetModal()
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: THelperFunctions.screenHeight() * 0.2,),
        const SizedBox(
          height: 128,
          width: 128,
          child: Image(image: AssetImage(TImages.emptyMeasurement),),
        ),
        const SizedBox(height: TSizes.spaceBtwElements,),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: const <TextSpan> [
                  TextSpan(
                      text: 'You have no saved measurements.',
                      style: TextStyle(
                        fontSize: 18
                      )
                  )
                ]
            )
        ),
      ],
    );
  }
}
