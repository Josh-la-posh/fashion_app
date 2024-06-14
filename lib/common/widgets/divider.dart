import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 1,
        width: double.infinity,
        decoration: BoxDecoration(
          color: TColors.dividerBg,
        ),
      );
  }
}
