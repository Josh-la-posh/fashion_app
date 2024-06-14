import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';

class SearchBarWidget extends StatelessWidget {
  String? placeholder;
  SearchBarWidget({
    super.key,
    this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 48,
      decoration: BoxDecoration(
          color: TColors.searchBarBackground,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                        text: placeholder ?? 'Search on S to P',
                        style: TextStyle(
                            color: TColors.itemNameColor
                        )
                    )
                  ]
              )
          ),
          Image(image: AssetImage(TImages.search))
        ],
      ),
    );
  }
}