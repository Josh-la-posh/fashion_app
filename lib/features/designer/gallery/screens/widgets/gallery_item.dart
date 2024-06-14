import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../item_detail.dart';

class GalleryItem extends StatelessWidget {
  const GalleryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(() => const GalleryItemDetail());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: TColors.secTextWhite,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Image(image: AssetImage(TImages.galleryImage),),
            ),
          ),
          SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                            text: 'Product/Collection'
                        )
                      ]
                  )
              ),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                            text: '\$000',
                            style: TextStyle(
                                fontWeight: FontWeight.w600
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
