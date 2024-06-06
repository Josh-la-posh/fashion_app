import 'package:flutter/material.dart';

import '../../../../common/widgets/search_bar.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';

class SearchAndSettingsWidget extends StatelessWidget {
  const SearchAndSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchBarWidget()),
        const SizedBox(width: TSizes.md,),
        IconButton(
            onPressed: (){},
            icon: const Image(image: AssetImage(TImages.settings))
        )
      ],
    );
  }
}