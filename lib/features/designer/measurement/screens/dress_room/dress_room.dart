import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sytle_to_perfection/common/widgets/layout/appbar_with_action_button.dart';
import 'package:sytle_to_perfection/data/provider/measurement_provider.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/dress_room/widget/add_to_button.dart';
import 'package:sytle_to_perfection/features/designer/measurement/screens/dress_room/widget/checkout_buttons.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class DressRoomScreen extends StatelessWidget {
  const DressRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final measurementProvider = Provider.of<MeasurementProvider>(context);
    return Scaffold(
      appBar: AppbarWithActionButton(
          title: 'Dress Room',
          actionImage: TImages.settings,
          actionOnpressed: (){}
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: TSizes.paddingSize, right: TSizes.paddingSize, bottom: TSizes.paddingSize * 2),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: THelperFunctions.screenHeight() * 0.7,
                decoration: BoxDecoration(
                    color: TColors.searchBarBackground,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: const Image(image: AssetImage(TImages.dressRoomImg)),
              ),
              const SizedBox(height: 15,),
              measurementProvider.addToCart == false
              ? AddToButtons(measurementProvider: measurementProvider)
              : CheckoutButton(measurementProvider: measurementProvider)
            ],
          ),
        ),
      ),
    );
  }
}
