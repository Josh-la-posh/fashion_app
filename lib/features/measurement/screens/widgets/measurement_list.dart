import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'measurement_list_container.dart';

class MeasurementListWidget extends StatelessWidget {
  const MeasurementListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 25,
        shrinkWrap: true,
        // padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: 96
        ),
        itemBuilder: (_, index) => MeasurementListContainer()

    );
  }
}
