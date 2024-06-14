import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/dashboard_location_noti.dart';
import 'package:sytle_to_perfection/features/designer/dashboard/screens/widget/layout.dart';
import 'package:sytle_to_perfection/features/tailor/dashboard/screens/widget/requet_widget.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/search_bar.dart';
import '../../../../utils/constants/colors.dart';

class TailorHomeScreen extends StatelessWidget {
  const TailorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return DashboardScreenLayout(
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.scaffoldPadding,
            child: Column(
              children: [

                // location and notification
                DashboardLocationNotification(darkMode: darkMode),
                const SizedBox(height: TSizes.spaceBtwItems,),

                // search bar
                SearchBarWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),

                // pending orders and sold templates

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
                                      text: '16',
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
                                      text: 'Sold Templates',
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

                // requests heading and filter

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.titleMedium,
                            children: const [
                              TextSpan(
                                  text: 'Requests',
                                  style: TextStyle(
                                      fontSize: 20
                                  )
                              )
                            ]
                        )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: SizedBox(
                          width: 40,
                          child: Image(image: AssetImage(TImages.filter)),
                        )
                    )
                  ],
                ),

                // requests

                ListView.separated(
                  separatorBuilder: (BuildContext _, int index) => const SizedBox(height: 15,),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return RequestWidget(darkMode: darkMode);
                  },
                )

                
              ],
            ),
          ),
        )
    );
  }
}
