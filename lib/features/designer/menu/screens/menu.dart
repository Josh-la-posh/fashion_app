import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../measurement/screens/measurement/measurement.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: THelperFunctions.screenHeight() - kBottomNavigationBarHeight,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const MeasurementScreen());
                      },
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: const Color(0xFFF6E7D7),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 18,
                                child: Image(image: AssetImage(TImages.upload),),
                              ),
                              SizedBox(height: TSizes.xs,),
                              Text(
                                'Upload',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: TTexts.fontFamily,
                                    color: Color(0xFF5E604D)
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => const );
                      },
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: const Color(0xFFF6E7D7),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 18,
                                child: Image(image: AssetImage(TImages.template),),
                              ),
                              SizedBox(height: TSizes.xs,),
                              Text(
                                'Template',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: TTexts.fontFamily,
                                    color: Color(0xFF5E604D)
                                ),
                              )
                            ],
                          )
                      ),
                    )
                  ],
                )
              ],
            )
        ),
        Positioned(
          bottom: 60,
          left: THelperFunctions.screenWidth() * 0.42,
          // right: 0,
          child: GestureDetector(
            onTap: () {
              // Get.to(() => const );
            },
            child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: const Color(0xFFF6E7D7),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18,
                      child: Image(image: AssetImage(TImages.blank),),
                    ),
                    SizedBox(height: TSizes.xs,),
                    Text(
                      'Blank',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: TTexts.fontFamily,
                          color: Color(0xFF5E604D)
                      ),
                    )
                  ],
                )
            ),
          ),
        )
      ],
    );
  }
}
