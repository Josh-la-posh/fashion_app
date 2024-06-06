import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
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
                  children: const [
                    TextSpan(
                        text: 'Search ...',
                        style: TextStyle(
                            color: TColors.itemNameColor
                        )
                    )
                  ]
              )
          ),
          const Icon(Icons.search, color: TColors.itemNameColor, size: 24,),
        ],
      ),
    );
  }
}