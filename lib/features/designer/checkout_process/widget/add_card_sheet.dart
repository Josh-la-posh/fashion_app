import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller_checkout/checkout_controller.dart';
import 'card_img_and_detail_widget.dart';

class AddCardSheet extends StatelessWidget {
  const AddCardSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CheckoutController());
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              CardImageAndDetails(
                title: 'Card number',
                placeholder: 'Type your card number',
                details: '',
                prevText: 'Cancel',
                nextText: 'Next',
              ),
              CardImageAndDetails(
                title: 'Card name',
                placeholder: 'Type the name written on the card',
                details: '',
                prevText: 'Back',
                nextText: 'Next',
              ),
              CardImageAndDetails(
                title: 'Card expiration date',
                placeholder: 'MM / YY',
                details: '',
                prevText: 'Back',
                nextText: 'Next',
              ),
              CardImageAndDetails(
                title: 'Card security number',
                placeholder: '000',
                details: '',
                prevText: 'Back',
                nextText: 'Done',
              ),
            ],
          ),
          // Positioned(
          //     bottom: 25,
          //     left: 25,
          //     right: 25,
          //     child: Container(
          //       height: 50,
          //       width: double.infinity,
          //       child: Row(
          //         children: [
          //           Expanded(
          //             child: SizedBox(
          //                 height: 48,
          //                 child: TOutlinedButton(
          //                     onTap: () => CheckoutController.instance.previousPage(),
          //                     buttonText: controller.currentPageIndex.value == 0 ? 'Cancel' : 'Back'
          //                 )
          //             ),
          //           ),
          //           const SizedBox(width: 9,),
          //           Expanded(
          //             child: SizedBox(
          //                 height: 48,
          //                 child: TElevatedButton(
          //                     onTap: () => CheckoutController.instance.nextPage(),
          //                     buttonText: controller.currentPageIndex.value == 3 ? 'Done' : 'Next'
          //                 )
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          // ),
        ],
      ),
    );
  }
}
