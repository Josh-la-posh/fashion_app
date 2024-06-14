import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/layout/appbar_with_action_button.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/widgets/update_status_modal.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';

import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../common/widgets/divider.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TailorCartOrderDetail extends StatelessWidget {
  const TailorCartOrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWithActionButton(
          title: 'Rainy White dress',
          actionImage: TImages.settings,
          actionOnpressed: () {}
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: TSpacingStyle.scaffoldPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // name, details and amount

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        color: Color(0xFFFCF6EC),
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.labelSmall,
                                children: const [
                                  TextSpan(
                                      text: 'Due in 3 Months',
                                      style: TextStyle(
                                          color: Color(0xFFFB8920)
                                      )
                                  )
                                ]
                            )
                        ),
                      ),
                    ],
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
                  SizedBox(height: 40,),

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

                  SizedBox(height: 40,),

                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.titleMedium,
                          children: const [
                            TextSpan(
                              text: 'View Measurements',
                              style: TextStyle(
                                fontSize: 16
                              )
                            )
                          ]
                      )
                  ),

                  SizedBox(height: 10,),
                ],
              ),
            ),
            DividerWidget(),
            SizedBox(height: 30,),


            // Order statu text
            Padding(
              padding: TSpacingStyle.horizontalPadding,
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium,
                      children: const [
                        TextSpan(
                            text: 'Order Status',
                            style: TextStyle(
                                fontSize: 20
                            )
                        )
                      ]
                  )
              ),
            ),


          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 48,
        padding: TSpacingStyle.horizontalPadding,
        margin: EdgeInsets.only(bottom: 40),
        child: TElevatedButton(
            onTap: (){
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (cdx) => const TailorUpdateStatusModal()
              );
            },
            buttonText: 'Update Status'
        ),
      ),
    );
  }
}
