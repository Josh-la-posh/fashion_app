import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../tailor_profile.dart';

class TailorDataWidget extends StatelessWidget {
  const TailorDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){
        Get.to(() => const TailorProfileScreen());
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: TColors.dividerBg,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Image(image: AssetImage(TImages.galleryImage))
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                              text: 'Abiodun Folashade',
                          )
                        ]
                    )
                ),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                          TextSpan(
                            text: 'NGN 150,000.00',
                            style: TextStyle(
                              fontSize: 16
                            )
                          )
                        ]
                    )
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 55,
              height: double.infinity,
              color: const Color(0xFFF0F0F0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: '5',
                                style: TextStyle(
                                    color: darkMode ? TColors.white : const Color(0xFF3C3C3C),
                                    fontWeight: TSizes.fontWeight500
                                )
                            )
                          ]
                      )
                  ),
                  const Icon(Icons.star, color: Color(0xFFFFD232), size: 27,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
