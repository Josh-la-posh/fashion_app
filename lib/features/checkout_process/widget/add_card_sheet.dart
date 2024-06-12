import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/features/checkout_process/controller_checkout/checkout_controller.dart';
import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/sizes.dart';
import 'card_img_and_detail_widget.dart';

class AddCardSheet extends StatelessWidget {
  const AddCardSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CheckoutController());
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            children: const [
              CardImageAndDetails(
                  title: 'Card number',
                  placeholder: 'Type your card number',
                  details: ''
              ),
              CardImageAndDetails(
                  title: 'Card name',
                  placeholder: 'Type the name written on the card',
                  details: ''
              ),
              CardImageAndDetails(
                  title: 'Card expiration date',
                  placeholder: 'MM / YY',
                  details: ''
              ),
              CardImageAndDetails(
                  title: 'Card security number',
                  placeholder: '000',
                  details: ''
              ),
            ],
          ),
          Positioned(
              bottom: 25,
              left: 25,
              right: 25,
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
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
                              onTap: () => CheckoutController.instance.nextPage(),
                              buttonText: 'Next'
                          )
                      ),
                    )
                  ],
                ),
              ),
          ),
          Positioned(
            top: 40,
              left: 0,
              right: 0,
              child:
              Container(
                alignment: Alignment.center,
                child: RichText(
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
              ),
          )
        ],
      ),
    );
  }
}
