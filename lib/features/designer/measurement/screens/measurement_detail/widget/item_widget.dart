import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class MeasurementDetailItemWidget extends StatelessWidget {
  final String position, type, value;
  const MeasurementDetailItemWidget({
    super.key, required this.position, required this.type, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: TColors.measurementBgColor
          ),
          child:
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <TextSpan> [
                    TextSpan(
                        text: position,
                        style: const TextStyle(
                            fontWeight: TSizes.fontWeight600,
                            color: TColors.lightButton
                        )
                    )
                  ]
              )
          ),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall,
                    children: <TextSpan> [
                      TextSpan(
                          text: type,
                          style: const TextStyle(
                              fontWeight: TSizes.fontWeight500
                          )
                      )
                    ]
                )
            ),
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall,
                    children: <TextSpan> [
                      TextSpan(
                          text: value,
                          style: const TextStyle(
                              fontWeight: TSizes.fontWeight800
                          )
                      )
                    ]
                )
            ),
          ],
        )
      ],
    );
  }
}