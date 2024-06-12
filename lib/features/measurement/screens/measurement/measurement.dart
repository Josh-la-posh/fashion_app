import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/layout/scaffold_with_floating_button.dart';
import 'package:sytle_to_perfection/features/measurement/screens/new_measurement/new_measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement/widget/measurement_list.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement/widget/no_measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/widgets/search_and_settings.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';

import '../../../../common/widgets/layout/appbar_with_action_button.dart';

class MeasurementScreen extends StatelessWidget {
  const MeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int measurement = 2;
    return ScaffoldWithFloatingButton(
        appBar: AppbarWithActionButton(
            title: 'My Measurement',
            actionImage: TImages.download,
            actionOnpressed: (){}
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.scaffoldPadding,
            child: Column(
              children: [
                const SearchAndSettingsWidget(),
                const SizedBox(height: TSizes.spaceBtwElements,),
                measurement == 0
                    ? const NoMeasurementScreen()
                    : const MeasurementListWidget()
              ],
            ),
          ),
        ),
        floatingActionButtonText: '+ ADD MEASUREMENT',
        onTap: () {Get.to(() => const NewMeasurementScreen());}
    );
  }
}
