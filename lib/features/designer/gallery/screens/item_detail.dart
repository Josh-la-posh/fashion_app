import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/designer/gallery/screens/widgets/gallery_item.dart';
import 'package:sytle_to_perfection/features/designer/gallery/screens/widgets/item_detail_widget.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class GalleryItemDetail extends StatelessWidget {
  const GalleryItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemDetailWidget(darkMode: darkMode),
              SizedBox(height: 15,),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                            text: 'You may also like',
                            style: TextStyle(
                                color: darkMode ? TColors.white : Colors.black.withOpacity(0.5),
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w600
                            )
                        )
                      ]
                  )
              ),
              SizedBox(height: 15,),
              GridView.builder(
                  itemCount: 9,
                  shrinkWrap: true,
                  // padding: EdgeInsets.zero,
                  physics: ScrollPhysics(),
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: TSizes.gridViewSpacing,
                      mainAxisSpacing: TSizes.gridViewSpacing,
                      mainAxisExtent: 316
                  ),
                  itemBuilder: (_, index) => const GalleryItem()

              )
            ],
          ),
        ),

      ),
    );
  }
}
