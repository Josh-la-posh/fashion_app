import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../../../../../utils/constants/images.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/texts.dart';

class ShortSleeve extends StatelessWidget {
  const ShortSleeve({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
      decoration: BoxDecoration(
        color: TColors.imageBackground,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Short Sleeve',
            style: TextStyle(
                fontSize: 18,
                fontWeight: TSizes.fontWeight400,
                fontFamily: TTexts.fontFamily
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 105,
            width: double.infinity,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 106,
                    width: 105,
                    decoration: BoxDecoration(
                      color: TColors.searchBarBackground,
                      borderRadius: BorderRadius.circular(12)
                  ),
                    child: const Image(image: AssetImage(TImages.shortSleeve)),
                );}),
          ),
        ],
      ),
    );
  }
}
