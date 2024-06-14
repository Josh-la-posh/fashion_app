import 'package:flutter/material.dart';

import '../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../controller_checkout/checkout_controller.dart';

class CardImageAndDetails extends StatelessWidget {
  final String title, placeholder, details, prevText, nextText;
  const CardImageAndDetails({
    super.key, required this.title, required this.placeholder, required this.details, required this.prevText, required this.nextText,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: const <TextSpan> [
                      TextSpan(
                          text: 'Add Card',
                          style: TextStyle(
                            fontSize: 18,
                          )
                      )
                    ]
                )
            ),
            const SizedBox(height: TSizes.spaceBtwElements),
            Container(
              padding: const EdgeInsets.all(15),
              height: 135,
              width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: TColors.dividerBg
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: <TextSpan> [
                            const TextSpan(
                                text: '**** **** **** ****',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: TSizes.fontWeight800,
                                    color: TColors.primary
                                )
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.labelSmall,
                              children: <TextSpan> [
                                const TextSpan(
                                    text: 'NAME',
                                    style: TextStyle(
                                        color: TColors.addressText
                                    )
                                )
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.labelSmall,
                              children: <TextSpan> [
                                const TextSpan(
                                    text: 'MM/YY',
                                    style: TextStyle(
                                        color: TColors.addressText
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwElements),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: <TextSpan> [
                          TextSpan(
                              text: title,
                              style: const TextStyle(
                                color: TColors.selectBg,
                              )
                          )
                        ]
                    )
                ),
                // const SizedBox(height: TSizes.spaceBtwItems,),
                TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(0),
                        hoverColor: Colors.transparent,
                        fillColor: Colors.transparent,
                        hintText: placeholder,
                        hintStyle: const TextStyle(
                            color: TColors.modalSheetLabel,
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
                          onTap: () => CheckoutController.instance.previousPage(),
                          buttonText: prevText
                      )
                  ),
                ),
                const SizedBox(width: 9,),
                Expanded(
                  child: SizedBox(
                      height: 48,
                      child: TElevatedButton(
                          onTap: () => CheckoutController.instance.nextPage(),
                          buttonText: nextText
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}