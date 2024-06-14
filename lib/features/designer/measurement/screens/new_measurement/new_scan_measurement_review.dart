import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/new_measurement/widget/save_manual_measurement_modal.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/devices/device_utility.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../../../../common/styles/spacing_style.dart';
import '../../../../../common/widgets/layout/appbar_with_action_button.dart';
import '../../../../../utils/constants/images.dart';
import '../measurement_detail/widget/measurement_details_content.dart';
import '../measurement_detail/widget/measurement_image.dart';

class NewScanMeasurementReviewScreen extends StatefulWidget {
  String? title;
  NewScanMeasurementReviewScreen({super.key, this.title});

  @override
  State<NewScanMeasurementReviewScreen> createState() => _MeasurementDetailScreenState();
}

class _MeasurementDetailScreenState extends State<NewScanMeasurementReviewScreen> {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppbarWithActionButton(
            title: widget.title!,
            actionImage: TImages.download,
            actionOnpressed: (){},
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: THelperFunctions.screenHeight() - TDeviceUtils.getAppBarHeight() - 100,
                      child: const TabBarView(children: [
                        MeasurementImageWidget(), MeasurementDetailContent()
                      ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  color: Colors.white,
                  height: 50,
                  child: const TabBar(
                    isScrollable: false,
                    indicatorColor: Colors.transparent,
                    labelColor: TColors.primary,
                    unselectedLabelColor: TColors.tabBarGreyText,
                    dividerColor: Colors.transparent,
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),

                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: TSizes.fontWeight600,
                        fontFamily: TTexts.fontFamily
                    ),
                    // labelPadding: EdgeInsets.symmetric(horizontal: ),
                    tabs: [
                      Tab(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                              'Scan model'
                          ),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'My Measurements'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            width: double.infinity,
            margin: TSpacingStyle.scaffoldPadding,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        side: MaterialStatePropertyAll(
                            BorderSide(
                              color: Color(0xFFDEDEDE)
                            )
                        )
                      ),
                      child:
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'RE-SCAN',
                                    style: TextStyle(
                                        color: TColors.black
                                    )
                                )
                              ]
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context,
                              builder: (cdx) => const SaveBottomSheetModal()
                          );
                        },
                      child:
                      RichText(
                        textAlign: TextAlign.center,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                    text: 'SAVE & CONTINUE',
                                    style: TextStyle(
                                        color: TColors.authGreyText
                                    )
                                )
                              ]
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
