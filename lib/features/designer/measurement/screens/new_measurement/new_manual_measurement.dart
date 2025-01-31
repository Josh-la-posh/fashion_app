import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/widgets/layout/appbar_with_action_button.dart';
import 'package:sytle_to_perfection/common/widgets/layout/scaffold_with_floating_button.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/new_measurement/widget/new_manual_measurement_detail.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/new_measurement/widget/save_manual_measurement_modal.dart';
import '../../../../../common/styles/spacing_style.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../widgets/search_and_settings.dart';

class NewManuelMeasurementScreen extends StatelessWidget {
  const NewManuelMeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithFloatingButton(
        appBar: AppbarWithActionButton(
            title: 'New Measurement',
            actionImage: TImages.download,
            actionOnpressed: (){}
        ),
        body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.scaffoldPadding,
        child: Column(
          children: [
            SearchAndSettingsWidget(placeholder: 'Search ...',),
            SizedBox(height: TSizes.spaceBtwElements,),
            NewMeasurementDetailContainer(
                title: 'Chest (C)',
                note: 'Around the fullest part of the chest',
                measurement: '32 inches',
                image: TImages.onboardingImage1
            ),
            SizedBox(height: TSizes.spaceBtwElements,),
            NewMeasurementDetailContainer(
                title: 'Waist (W)',
                note: 'Around the natural waistline',
                measurement: '32 inches',
                image: TImages.onboardingImage1
            ),
            SizedBox(height: TSizes.spaceBtwElements,),
            NewMeasurementDetailContainer(
                title: 'Hips (H)',
                note: 'Around the fullest part of the hip',
                measurement: 'INPUT HERE',
                image: TImages.onboardingImage1
            ),
            SizedBox(height: TSizes.spaceBtwElements,),
            NewMeasurementDetailContainer(
                title: 'Insteam (I)',
                note: 'Along the inner leg, from crotch to desired pant length.',
                measurement: 'INPUT HERE',
                image: TImages.onboardingImage1
            ),
          ],
        ),
      ),
        ),

        floatingActionButtonText: 'Next',
        onTap: (){
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (cdx) => const SaveBottomSheetModal()
          );
        }
    );
  }
}
