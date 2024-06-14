import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/features/designer/tailor/screens/widgets/tailor_search_content_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../cart/screens/widgets/layout.dart';

class TailorSearchScreen extends StatelessWidget {
  const TailorSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return CartScreenLayout(
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.horizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: 'Searching for tailor ...',
                              style: TextStyle(
                                  color: darkMode ? TColors.white : TColors.primary,
                                  fontSize: TSizes.fontSize20
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
                              text: 'Total biding : 2',
                              style: TextStyle(
                                  color: darkMode ? TColors.white : TColors.addressText,
                                  fontSize: TSizes.fontSize20
                              )
                          )
                        ]
                    )
                ),
                SizedBox(height: 20,),
                Container(
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TColors.dividerBg,
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: 'Set Location',
                                style: TextStyle(
                                    color: darkMode ? TColors.white : Color(0xFF3E3E40),
                                    fontWeight: TSizes.fontWeight600
                                )
                            )
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => TailorDataWidget()
                )
              ],
            ),
          ),
        )
    );
  }
}
