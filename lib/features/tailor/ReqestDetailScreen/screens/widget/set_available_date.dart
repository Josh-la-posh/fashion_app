import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SetAvailableDateModal extends StatelessWidget {
  const SetAvailableDateModal({super.key});

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
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: const <TextSpan> [
                      TextSpan(
                          text: 'Set Available Date',
                          style: TextStyle(
                            fontSize: 18,
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
                              text: 'Date Picker',
                              style: TextStyle(
                                color: TColors.saveMeasurementText,
                              )
                          )
                        ]
                    )
                ),
                // const SizedBox(height: TSizes.spaceBtwItems,),
                TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        hoverColor: Colors.transparent,
                        fillColor: Colors.transparent,
                        hintText: 'Set Approximate date outfit would be ready',
                        hintStyle: TextStyle(
                            color: TColors.saveMeasurementText,
                            fontWeight: TSizes.fontWeight400,
                            fontSize: 16,
                            fontFamily: TTexts.fontFamily
                        )
                      // labelText: 'Title'
                    )
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwElements,),
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
                            // Get.back();
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
