import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../common/widgets/divider.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TailorUpdateStatusModal extends StatelessWidget {
  const TailorUpdateStatusModal({super.key});

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
                              text: 'Update Status',
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
                                        text: 'In Progress',
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
                                        text: 'Awaiting Delivery',
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
                    SizedBox(height: 10,),
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
                                        text: 'Processing Refund',
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
                    SizedBox(height: 10,),
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
                                        text: 'Cancel Order',
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


                // Buttons

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 48,
                          child: TOutlinedButton(
                              onTap: (){Get.back();},
                              buttonText: 'Cancel')
                      ),
                    ),
                    const SizedBox(width: 9,),
                    Expanded(
                      child: SizedBox(
                          height: 48,
                          child: TElevatedButton(
                              onTap: (){
                                Get.back();
                              },
                              buttonText: 'Next'
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
