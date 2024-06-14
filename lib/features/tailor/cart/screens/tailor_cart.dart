import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/widgets/cart_order_widget.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widgets/dashboard_location_noti.dart';
import '../../../../common/widgets/search_bar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../designer/tailor/screens/widgets/layout.dart';

class TailorCartScreen extends StatelessWidget {
  const TailorCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 3,
      child: CartScreenLayout(
          childWidget: SingleChildScrollView(
            child: Padding(
              padding: TSpacingStyle.scaffoldPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // location and notification
                  DashboardLocationNotification(darkMode: darkMode),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // search bar
                  SearchBarWidget(),
                  const SizedBox(height: TSizes.spaceBtwElements,),

                  // pending orders and awaiting delivery

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.titleMedium,
                                  children: const [
                                    TextSpan(
                                        text: '12',
                                        style: TextStyle(
                                            fontSize: 20
                                        )
                                    )
                                  ]
                              )
                          ),
                          SizedBox(height: 10,),
                          RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                        text: 'Pending Orders',
                                        style: TextStyle(
                                          color: darkMode ? TColors.white : TColors.addressText,
                                        )
                                    )
                                  ]
                              )
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.titleMedium,
                                  children: const [
                                    TextSpan(
                                        text: '5',
                                        style: TextStyle(
                                            fontSize: 20
                                        )
                                    )
                                  ]
                              )
                          ),
                          SizedBox(height: 10,),
                          RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                        text: 'Awaiting Delivery',
                                        style: TextStyle(
                                          color: darkMode ? TColors.white : TColors.addressText,
                                        )
                                    )
                                  ]
                              )
                          ),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwElements,),

                  // order heading

                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.titleMedium,
                          children: const [
                            TextSpan(
                                text: 'Orders',
                                style: TextStyle(
                                    fontSize: 20
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 30,),

                  // requests

                  ListView.separated(
                    separatorBuilder: (BuildContext _, int index) => const SizedBox(height: 15,),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return CartOrderWidget(darkMode: darkMode);
                    },
                  )


                ],
              ),
            ),
          )
      ),
    );
  }
}
