import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/common/widgets/divider.dart';
import 'package:sytle_to_perfection/features/designer/checkout_process/widget/add_card_sheet.dart';
import 'package:sytle_to_perfection/features/designer/checkout_process/widget/discount_modal_sheet.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/buttons/outlined_button.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Get.back();}, icon: const Image(image: AssetImage(TImages.arrowLeft))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: TSpacingStyle.scaffoldPadding,
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                              text: 'Select or add a payment method',
                              style: TextStyle(
                                  fontSize: TSizes.fontSize20
                              )
                          )
                        ]
                    )
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: TSpacingStyle.scaffoldPadding,
                child: SizedBox(
                    height: 48,
                    child: TOutlinedButton(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.white,
                              isScrollControlled: false,
                              context: context,
                              builder: (cdx) => const AddCardSheet()
                          );
                        },
                        buttonText: 'Add Card'
                    )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: THelperFunctions.screenWidth() * 0.85,
                child: DividerWidget(),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.paddingSize),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (cdx) => const DiscountCouponSheet()
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.titleMedium,
                              children: [
                                TextSpan(
                                    text: 'Enter discount coupon',
                                    style: TextStyle(
                                        fontSize: TSizes.fontSize16
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              DividerWidget(),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.paddingSize),
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(
                                      text: 'Enter discount coupon',
                                      style: TextStyle(
                                          fontSize: TSizes.fontSize20
                                      )
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                      text: 'E-transfer',
                                      style: TextStyle(
                                          fontSize: TSizes.fontSize16
                                      )
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation:
      // FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Container(
      //   height: 100,
      //   margin: EdgeInsets.symmetric(horizontal: 25),
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             RichText(
      //                 text: TextSpan(
      //                     style: Theme.of(context).textTheme.bodyMedium,
      //                     children: [
      //                       TextSpan(
      //                         text: 'Subtotal (VAT included)',
      //                       )
      //                     ]
      //                 )
      //             ),
      //             RichText(
      //                 text: TextSpan(
      //                     style: Theme.of(context).textTheme.bodyMedium,
      //                     children: [
      //                       TextSpan(
      //                           text: 'NGN 50,000.00',
      //                           style: TextStyle(
      //                               fontWeight: TSizes.fontWeight600
      //                           )
      //                       )
      //                     ]
      //                 )
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 20,),
      //       SizedBox(
      //           height: 48,
      //           child: TElevatedButton(onTap: () {}, buttonText: 'Continue to checkout')
      //       ),
      //       SizedBox(height: 40,),
      //     ],
      //   ),
      // ),
    );
  }
}
