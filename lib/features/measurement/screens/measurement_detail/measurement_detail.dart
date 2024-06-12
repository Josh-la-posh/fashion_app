import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/widgets/layout/scaffold_with_floating_button.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/widget/measurement_details_content.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/widget/measurement_item.dart';
import 'package:sytle_to_perfection/features/measurement/screens/pattern/pattern.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/devices/device_utility.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/layout/appbar_with_action_button.dart';
import '../../../../utils/constants/images.dart';

class MeasurementDetailScreen extends StatefulWidget {
  String? title;
  MeasurementDetailScreen({super.key, this.title});

  @override
  State<MeasurementDetailScreen> createState() => _MeasurementDetailScreenState();
}

class _MeasurementDetailScreenState extends State<MeasurementDetailScreen> {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: ScaffoldWithFloatingButton(
          appBar: AppbarWithActionButton(
            title: widget.title!,
            actionImage: TImages.settings,
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
                        MeasurementItem(), MeasurementDetailContent()
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
          floatingActionButtonText: 'Continue',
          onTap: () {Get.to(() => const PatternScreen());}
      ),
    );
  }
}
