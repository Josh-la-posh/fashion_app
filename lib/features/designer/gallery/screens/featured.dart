import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/designer/gallery/screens/widgets/gallery_item.dart';

import '../../../../utils/constants/sizes.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 25,
        shrinkWrap: true,
        // padding: EdgeInsets.zero,
        physics: ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: 316
        ),
        itemBuilder: (_, index) => const GalleryItem()

    );
  }
}
