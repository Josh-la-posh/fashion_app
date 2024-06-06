import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/features/dashboard/screens/widget/layout.dart';
import 'package:sytle_to_perfection/features/dashboard/screens/widget/list_categories.dart';
import 'package:sytle_to_perfection/features/dashboard/screens/widget/spotlight.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../common/widgets/search_bar.dart';
import '../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return DashboardScreenLayout(
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.scaffoldPadding,
            child: Column(
              children: [
                Row(
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
                                fontFamily: 'DM Sans',
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
                    SizedBox(
                        height: 16,
                        width: 16,
                        child: darkMode ? const Icon(Icons.notifications_none, color: TColors.white,) : const Image(image: AssetImage(TImages.notification))
                    ),
                    const SizedBox(width: 15,),
                    Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33)
                        ),
                        child: const Image(image: AssetImage(TImages.user))
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const SearchBarWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),
                const SpotlightWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),
                HomeListCategories(
                    title: 'Top designers',
                    onPressed: (){Get.to(() => const MeasurementScreen());},
                    brand: 'Adidas',
                    itemName: 'Sport, Casual',
                    brandLogo: TImages.itemLogo,
                    itemImage: TImages.designs
                ),
                const SizedBox(height: TSizes.spaceBtwElements,),
                HomeListCategories(
                    title: 'Stores on sale',
                    onPressed: (){},
                    brand: 'Adidas',
                    itemName: 'Sport, Casual',
                    brandLogo: TImages.itemLogo,
                    itemImage: TImages.designs
                ),
                
              ],
            ),
          ),
        )
    );
  }
}


