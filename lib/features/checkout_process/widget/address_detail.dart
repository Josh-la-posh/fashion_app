import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

class AddressDetailWidget extends StatelessWidget {
  const AddressDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: TColors.secTextWhite
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (THelperFunctions.screenWidth() - (TSizes.paddingSize * 2) - 40) * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.titleMedium,
                              children: const [
                                TextSpan(
                                    text: 'Ava Johnson - Work',
                                    style: TextStyle(
                                        fontSize: TSizes.fontSize16,
                                        color: TColors.primary
                                    )
                                )
                              ]
                          )
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: const [
                                TextSpan(
                                    text: '3910 Crim Lane, Greendale County, Colorado. Zip Code 410348',
                                    style: TextStyle(
                                        color: TColors.addressText
                                    )
                                )
                              ]
                          )
                      ),
                      const SizedBox(height: 20,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: const [
                                TextSpan(
                                    text: 'Arrival est: Apr 15  \$0 Shipping',
                                    style: TextStyle(
                                        color: TColors.addressText
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: TColors.selectBg,
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Icon(Icons.circle, color: TColors.selectBg, size: 13,),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25,),
              Container(
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: TColors.addressText.withOpacity(0.2),
                ),
              ),
              const SizedBox(height: 15,),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: const [
                        TextSpan(
                            text: 'EDIT',
                            style: TextStyle(
                                color: Color(0xFF5E604D),
                            )
                        )
                      ]
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
