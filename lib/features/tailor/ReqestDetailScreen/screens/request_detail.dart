import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/layout/appbar_with_action_button.dart';
import 'package:sytle_to_perfection/features/tailor/ReqestDetailScreen/screens/widget/request_outfit.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class RequestDetailScreen extends StatelessWidget {
  const RequestDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppbarWithActionButton(
            title: 'Rainy White dress',
            actionImage: TImages.settings,
            actionOnpressed: () {}
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              // tabs

              Container(
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
                            'Outfit'
                        ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Client'
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              // page content

              SizedBox(
                height: THelperFunctions.screenHeight(),
                child: const TabBarView(
                  physics: ScrollPhysics(),
                  children: [
                  RequestOutfit(), RequestOutfit()
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
