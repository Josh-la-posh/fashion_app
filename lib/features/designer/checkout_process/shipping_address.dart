import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';
import 'package:sytle_to_perfection/features/designer/checkout_process/payment_method.dart';
import 'package:sytle_to_perfection/features/designer/checkout_process/widget/address_detail.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';

import '../../../utils/constants/images.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Get.back();}, icon: const Image(image: AssetImage(TImages.arrowLeft))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.scaffoldPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                            text: 'Select or add a shipping address',
                            style: TextStyle(
                                fontSize: TSizes.fontSize20
                            )
                        )
                      ]
                  )
              ),
              SizedBox(height: 20,),
              AddressDetailWidget(),
              SizedBox(height: 40,),
              SizedBox(
                  height: 48,
                  child: TOutlinedButton(onTap: () {}, buttonText: 'Add address')
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: 'Subtotal (VAT included)',
                            )
                          ]
                      )
                  ),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: 'NGN 50,000.00',
                                style: TextStyle(
                                    fontWeight: TSizes.fontWeight600
                                )
                            )
                          ]
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
                height: 48,
                child: TElevatedButton(
                    onTap: () {Get.to(() => const PaymentMethodScreen());},
                    buttonText: 'Continue to checkout'
                )
            ),
          ],
        ),
      ),
    );
  }
}
