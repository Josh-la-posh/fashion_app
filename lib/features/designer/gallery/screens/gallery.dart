import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/layout/searchbar_with_action_btn.dart';
import 'package:sytle_to_perfection/features/designer/gallery/screens/widgets/layout.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../../cart/screens/past_cart_item.dart';
import '../../cart/screens/upcoming_cart_item.dart';
import 'featured.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: GalleryScreenLayout(
          childWidget: SingleChildScrollView(
            child: Column(
              children: [
                const SearchBarWithActionButtons(),

                const SizedBox(
                  height: 50,
                  child: TabBar(
                      tabAlignment: TabAlignment.center,
                      indicatorColor: Colors.transparent,
                      labelColor: TColors.primary,
                      unselectedLabelColor: TColors.tabBarGreyText,
                      dividerColor: Colors.transparent,
                      overlayColor: MaterialStatePropertyAll(Colors.transparent),

                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: TSizes.fontWeight500,
                          fontFamily: TTexts.fontFamily
                      ),
                      tabs: [
                        Tab(text: 'Featured',),
                        Tab(text: 'Colleection',),
                        Tab(text: 'Store',),
                        Tab(text: 'Tags',),
                      ]
                  ),
                ),
                Container(
                  height: THelperFunctions.screenHeight() - kBottomNavigationBarHeight - TSizes.appBarHeight,
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.paddingSize),
                  child: const TabBarView(
                      children: [
                        FeaturedScreen(), PastCartItems(), UpcomingCartItems(), UpcomingCartItems(),
                      ]
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
