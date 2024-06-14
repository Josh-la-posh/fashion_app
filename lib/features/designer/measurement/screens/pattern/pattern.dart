import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/widgets/layout/appbar_with_action_button.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/pattern/widget/short_sleeve.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../dress_room/dress_room.dart';

class PatternScreen extends StatelessWidget {
  const PatternScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppbarWithActionButton(
                title: 'Pattern',
                actionImage: TImages.settings,
                actionOnpressed: (){}
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: TSizes.paddingSize),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: TSizes.paddingSize),
                      width: double.infinity,
                      height: THelperFunctions.screenHeight() * 0.7,
                      decoration: BoxDecoration(
                          color: TColors.searchBarBackground,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Image(image: AssetImage(TImages.patternDisplay)),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 88,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (_, index) => Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 88,
                                decoration: BoxDecoration(
                                    color: TColors.searchBarBackground,
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: const Image(image: AssetImage(TImages.partView)),
                              ),
                              Positioned(
                                top: 30,
                                left: 30,
                                child: const Text('Full'),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(height: 10,),
                    const SizedBox(
                      height: 50,
                      child: TabBar(
                        // isScrollable: true,
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
                          tabs: [
                            Tab(text: 'Hat',),
                            Tab(text: 'Shirt',),
                            Tab(text: 'Trouser',),
                            Tab(text: 'Neck',),
                            Tab(text: 'Closing',),
                          ]
                      ),
                    ),
                    Container(
                      height: 170,
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.paddingSize),
                      child: const TabBarView(
                          children: [
                            ShortSleeve(),ShortSleeve(),ShortSleeve(),ShortSleeve(),ShortSleeve(),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 80,
              left: 45,
              child: GestureDetector(
                onTap: () {Get.to(() => const DressRoomScreen());},
                child: Container(
                  width: 97,
                  height: 40,
                  decoration: BoxDecoration(
                    color: TColors.secTextWhite,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: TColors.fixedPatternBd
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.play_arrow_rounded, color: TColors.black, size: 30,),
                      const SizedBox(width: 4,),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodySmall,
                              children: const <TextSpan> [
                                TextSpan(
                                    text: 'Review',
                                    style: TextStyle(
                                        fontWeight: TSizes.fontWeight500,
                                        color: TColors.primary
                                    )
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              )
          ),
          Positioned(
              top: 80,
              right: 45,
              child: Container(
                width: 97,
                height: 40,
                decoration: BoxDecoration(
                    color: TColors.secTextWhite,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        color: TColors.fixedPatternBd
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.lock, size: 14,),
                    const SizedBox(width: 8,),
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodySmall,
                            children: const <TextSpan> [
                              TextSpan(
                                  text: 'Locked',
                                  style: TextStyle(
                                      fontWeight: TSizes.fontWeight500,
                                      color: TColors.primary
                                  )
                              )
                            ]
                        )
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
