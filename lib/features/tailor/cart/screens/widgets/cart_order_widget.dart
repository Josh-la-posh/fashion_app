import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/tailor_cart_order_detail.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';

class CartOrderWidget extends StatelessWidget {
  const CartOrderWidget({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const TailorCartOrderDetail());
      },
      child: Container(
        height: 92,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF0F0F0),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children:

          [
            // image
            Container(
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image(image: AssetImage(TImages.galleryImage))
            ),
            SizedBox(width: 5,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // item name

                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                            text: 'Bershka Jeans',
                          )
                        ]
                    )
                ),

                SizedBox(height: 10,),
                // size and color
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                              text: 'S - 26  |  Blue  |  x1 ',
                              style: TextStyle(
                                  color: darkMode ? Colors.white : TColors.addressText
                              )
                          )
                        ]
                    )
                ),
              ],
            ),

            Spacer(),



            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Due date

                Container(
                  color: Color(0xFFFCF6EC),
                  child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.labelSmall,
                          children: const [
                            TextSpan(
                                text: 'Due in 3 Months',
                                style: TextStyle(
                                    color: Color(0xFFFB8920)
                                )
                            )
                          ]
                      )
                  ),
                ),

                SizedBox(height: 10,),

                // amount

                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                          TextSpan(
                              text: 'NGN 20,000.00',
                              style: TextStyle(
                                  fontSize: 16
                              )
                          )
                        ]
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
