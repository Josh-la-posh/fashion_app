import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/scaffold_with_floating_button.dart';
import 'package:sytle_to_perfection/features/measurement/screens/new_measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/widgets/measurement_list.dart';
import 'package:sytle_to_perfection/features/measurement/screens/widgets/no_measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/widgets/search_and_settings.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';

class MeasurementScreen extends StatelessWidget {
  const MeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int measurement = 1;
    return ScaffoldWithFloatingButton(
        appBar: AppBar(
          title: Text(
            'My Measurements',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          centerTitle: true,
          leading: IconButton(onPressed: () {Get.back();}, icon: const Image(image: AssetImage(TImages.arrowLeft))),
          actions: <Widget>[
            IconButton(
                onPressed: (){},
                icon: const Image(image: AssetImage(TImages.download)))
          ],
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
