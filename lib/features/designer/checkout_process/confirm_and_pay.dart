import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/divider.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';
import '../tailor/screens/tailor_search.dart';

class ConfirmAndPayScreen extends StatelessWidget {
  const ConfirmAndPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: TSpacingStyle.horizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: 'Bershka Mom Jeans',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize20
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodySmall,
                              children: [
                                TextSpan(
                                    text: '26 - S | Blue | ID:0706502',
                                    style: TextStyle(
                                        color: TColors.itemNameColor
                                    )
                                )
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.titleMedium,
                              children: [
                                TextSpan(
                                    text: '\$34',
                                    style: TextStyle(
                                        fontSize: TSizes.fontSize20
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  // Images
                  Container(
                    height: 89,
                    width: double.infinity,
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            height: 88,
                            width: 105,
                            decoration: BoxDecoration(
                                color: TColors.searchBarBackground,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: const Image(image: AssetImage(TImages.shortSleeve)),
                          );}),
                  ),

                  SizedBox(height: 20,),
                ],
              ),
            ),
            DividerWidget(),
            SizedBox(height: 20,),
            Padding(
              padding: TSpacingStyle.horizontalPadding,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'Bershka Mom Jeans',
                                )
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: '\$35',
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: 'Taxes',
                                )
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: '\$8',
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: 'Shipping',
                                  style: TextStyle(
                                    color: TColors.selectBg
                                  )
                                )
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: '\$5',
                                    style: TextStyle(
                                        color: TColors.selectBg
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xFFDBDBDB),
                          width: 1,
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(
                                      text: 'Total',
                                      style: TextStyle(
                                          fontSize: 20
                                      )
                                  )
                                ]
                            )
                        ),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                      text: '\$48',
                                      style: TextStyle(
                                          fontSize: 20
                                      )
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                      height: 48,
                      child: TElevatedButton(
                          onTap: (){
                            Get.to(() => const TailorSearchScreen());
                          },
                          buttonText: 'Confirm and pay'
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            DividerWidget(),
            SizedBox(height: 30,),
            Padding(
              padding: TSpacingStyle.horizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: 'Order info',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize20
                                )
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'Order Address',
                                    style: TextStyle(
                                        color: TColors.itemNameColor
                                    )
                                )
                              ]
                          )
                      ),
                      SizedBox(height: 5,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: '21 Yellow Av, Greendale County, Colorado. Zip Code 410236',
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'Receives',
                                    style: TextStyle(
                                        color: TColors.itemNameColor
                                    )
                                )
                              ]
                          )
                      ),
                      SizedBox(height: 5,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: 'Ava Johnson',
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'Payment method',
                                    style: TextStyle(
                                        color: TColors.itemNameColor
                                    )
                                )
                              ]
                          )
                      ),
                      SizedBox(height: 5,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: 'Mastercard ending in 1578',
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: THelperFunctions.screenWidth() * 0.9,
              child: DividerWidget(),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: TSpacingStyle.horizontalPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: 'Shipping and return policies',
                                style: TextStyle(
                                    fontSize: TSizes.fontSize20
                                )
                            )
                          ]
                      )
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
