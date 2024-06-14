import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/common/widgets/divider.dart';
import 'package:sytle_to_perfection/features/tailor/ReqestDetailScreen/screens/widget/set_available_date.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SetPriceModal extends StatelessWidget {
  const SetPriceModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                            text: 'Set Price',
                            style: TextStyle(
                              fontSize: 18,
                            )
                        )
                      ]
                  )
              ),
              const SizedBox(height: TSizes.spaceBtwElements / 1.4,),
              
              // Price selection
              
              Column(
                children: [
                  Container(
                    height: 52,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const <TextSpan> [
                                  TextSpan(
                                      text: 'NGN 10,000',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
                                  )
                                ]
                            )
                        ),
                        Icon(Icons.circle_outlined, size: 20,)
                      ],
                    ),
                  ),
                  DividerWidget(),
                  SizedBox(height: 10,),
                  Container(
                    height: 52,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const <TextSpan> [
                                  TextSpan(
                                      text: 'NGN 20,000',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
                                  )
                                ]
                            )
                        ),
                        Icon(Icons.circle_outlined, size: 20,)
                      ],
                    ),
                  ),
                  DividerWidget(),
                  SizedBox(height: 10,),
                  Container(
                    height: 52,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const <TextSpan> [
                                  TextSpan(
                                      text: 'NGN 30,000',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )
                                  )
                                ]
                            )
                        ),
                        Icon(Icons.circle_outlined, size: 20,)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwElements,),

              // Custom price

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.labelSmall,
                          children: const <TextSpan> [
                            TextSpan(
                                text: 'Custom price',
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
                          hintText: 'Type your offer here',
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
              const SizedBox(height: TSizes.spaceBtwElements * 2,),

              // Buttons

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
                              Get.back();
                              showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  context: context,
                                  builder: (cdx) => const SetAvailableDateModal()
                              );
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
      )
    );
  }
}
