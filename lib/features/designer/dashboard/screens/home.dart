import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/features/designer/dashboard/screens/widget/layout.dart';
import 'package:sytle_to_perfection/features/designer/dashboard/screens/widget/list_categories.dart';
import 'package:sytle_to_perfection/features/designer/dashboard/screens/widget/spotlight.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/dashboard_location_noti.dart';
import '../../../../common/widgets/search_bar.dart';
import '../../measurement/screens/measurement/measurement.dart';

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
                DashboardLocationNotification(darkMode: darkMode),
                const SizedBox(height: TSizes.spaceBtwItems,),
                SearchBarWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),
                const SpotlightWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),
                HomeListCategories(
                    title: 'Top designers',
                    onPressed: (){},
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


