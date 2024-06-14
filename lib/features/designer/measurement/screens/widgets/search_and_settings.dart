import 'package:flutter/material.dart';

import '../../../../../common/widgets/search_bar.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class SearchAndSettingsWidget extends StatelessWidget {
  String? placeholder;
  SearchAndSettingsWidget({
    super.key,
    this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchBarWidget(placeholder: placeholder,)),
        const SizedBox(width: TSizes.md,),
        IconButton(
            onPressed: (){},
            icon: const Image(image: AssetImage(TImages.settings))
        )
      ],
    );
  }
}