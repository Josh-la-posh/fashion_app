import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/tailor_cart.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import '../../features/tailor/dashboard/screens/home.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/sizes.dart';

class DashboardLocationNotification extends StatelessWidget {
  const DashboardLocationNotification({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
            height: 14,
            width: 13,
            child: Image(image: AssetImage(TImages.location))
        ),
        const SizedBox(width: 10,),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                      text: 'Lagos Island',
                      style: TextStyle(
                          color: darkMode ? TColors.white : TColors.locationText,
                          fontFamily: TTexts.fontFamilyDmSans,
                          fontWeight: TSizes.fontWeight700
                      )
                  )
                ]
            )
        ),
        const SizedBox(width: 10,),
        Container(
            child: const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: TColors.locationText,
              size: 16,
            )
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Get.to(() => TailorCartScreen());
          },
          child: SizedBox(
              height: 16,
              width: 16,
              child: darkMode ? const Icon(Icons.notifications_none, color: TColors.white,) : const Image(image: AssetImage(TImages.notification))
          ),
        ),
        const SizedBox(width: 15,),
        GestureDetector(
          onTap: () {
            Get.to(() => TailorHomeScreen());
          },
          child: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33)
              ),
              child: const Image(image: AssetImage(TImages.user))
          ),
        ),
      ],
    );
  }
}