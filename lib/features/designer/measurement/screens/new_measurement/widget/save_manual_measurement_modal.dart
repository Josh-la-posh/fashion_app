import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/texts.dart';
import '../../measurement/measurement.dart';

class SaveBottomSheetModal extends StatelessWidget {
  const SaveBottomSheetModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
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
                          text: 'Save measurement',
                          style: TextStyle(
                              fontSize: 20,
                          )
                      )
                    ]
                )
            ),
            const SizedBox(height: TSizes.spaceBtwElements / 1.4,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.labelSmall,
                        children: const <TextSpan> [
                          TextSpan(
                              text: 'Title',
                              style: TextStyle(
                                color: TColors.saveMeasurementText,
                              )
                          )
                        ]
                    )
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hoverColor: Colors.transparent,
                        fillColor: Colors.transparent,
                        hintText: 'Give this measurement a title',
                        hintStyle: TextStyle(
                          color: TColors.saveMeasurementText,
                          fontWeight: TSizes.fontWeight400,
                          fontSize: 16,
                          fontFamily: TTexts.fontFamily,
                          letterSpacing: 0.25
                        )
                      // labelText: 'Title'
                    )
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwElements),
             Row(
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: <TextSpan> [
                          TextSpan(
                              text: 'You can name it after the owner of the measurement',
                              style: TextStyle(
                                color: TColors.saveMeasurementGreyText,
                              )
                          )
                        ]
                    )
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwElements * 1.5),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                      height: 48,
                      child: TOutlinedButton(
                          onTap: (){Get.back();},
                          buttonText: 'CANCEL')
                  ),
                ),
                const SizedBox(width: 9,),
                Expanded(
                  child: SizedBox(
                      height: 48,
                      child: TElevatedButton(
                          onTap: (){
                            Get.to(() => MeasurementScreen());
                          },
                          buttonText: 'SAVE'
                      )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
