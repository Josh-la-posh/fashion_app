import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/data/provider/measurement_provider.dart';
import 'package:sytle_to_perfection/features/measurement/screens/dress_room/widget/your_budget_sheet.dart';
import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class CheckoutButton extends StatelessWidget {
  final MeasurementProvider measurementProvider;
  const CheckoutButton({super.key, required this.measurementProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (cdx) => const YourBudgetSheet()
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: 64,
            width: double.infinity,
            color: TColors.darkButton,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
                SizedBox(width: 25,),
                const Text(
                  'Proceed to checkout',
                  style: TextStyle(
                      fontSize: TSizes.fontSize16,
                      color: TColors.white,
                      fontWeight: TSizes.fontWeight400,
                      fontFamily: TTexts.fontFamily
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  height: 26,
                  decoration: BoxDecoration(
                      color: TColors.checkoutAmountBg,
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Text(
                    'NGN 0.00',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                SizedBox(width: 25,),
                const Icon(Icons.arrow_right_alt_outlined, color: Colors.white,)
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: TOutlinedButton(
                    onTap: () => measurementProvider.removeFromCart(),
                    buttonText: 'Remove from cart'
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: SizedBox(
                height: 48,
                child: TElevatedButton(
                    onTap: (){},
                    buttonText: 'View Cart'
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
