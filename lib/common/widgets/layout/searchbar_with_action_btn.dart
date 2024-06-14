import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/search_bar.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';


class SearchBarWithActionButtons extends StatelessWidget {
  const SearchBarWithActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              hoverColor: Colors.transparent,
              icon: const SizedBox(
                height: 48,
                width: 48,
                child: Image(image: AssetImage(TImages.cartSearch)),
              )
          ),
          Expanded(child: SearchBarWidget()),
          IconButton(
              onPressed: () {},
              icon: const SizedBox(
                height: 48,
                width: 48,
                child: Image(image: AssetImage(TImages.bookmark)),
              )
          ),
        ],
      ),
    );
  }
}
