import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';
import 'package:sytle_to_perfection/utils/constants/sizes.dart';
import '../../new_measurement/new_manual_measurement.dart';
import '../../new_measurement/scanning_body.dart';

class NoMeasurementBottomSheetModal extends StatelessWidget {
  const NoMeasurementBottomSheetModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    children: const <TextSpan> [
                      TextSpan(
                          text: 'No measurement saved',
                          style: TextStyle(
                              fontSize: 20
                          )
                      )
                    ]
                )
            ),
            const SizedBox(height: TSizes.spaceBtwElements,),
            Text(
              'Start by adding your first measurements to unlock a world of insights and personalized recommendations.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwElements,),
            SizedBox(
                height: 48,
                child: TElevatedButton(
                    onTap: (){
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            contentPadding: const EdgeInsets.all(0),
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            content: Container(
                              height: 172,
                              width: 270,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 20,),
                                  const Text(
                                    '"S to P" Would Like to \n Access Your Camera',
                                    style: TextStyle(
                                        fontWeight: TSizes.fontWeight600,
                                        fontSize: 18,
                                        color: Colors.black
                                    ),
                                  ),
                                  const SizedBox(height: 5,),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 19.0),
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        'This lets you take photo to scan your identity card for verification.',
                                        style: TextStyle(
                                            fontWeight: TSizes.fontWeight400,
                                            fontSize: 13,
                                            color: Colors.black,
                                            letterSpacing: -0.08
                                        )
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(width: 0.5, color: const Color(0xFF3C3C43).withOpacity(0.36)),
                                                  right: BorderSide(width: 0.5, color: const Color(0xFF3C3C43).withOpacity(0.36))
                                              )
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text(
                                                "Don't allow",
                                                style: TextStyle(
                                                    fontWeight: TSizes.fontWeight400,
                                                    fontSize: 17,
                                                    color: Color(0xFF007AFF),
                                                    letterSpacing: -0.41,
                                                    fontFamily: 'Manrope'
                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(width: 0.5, color: const Color(0xFF3C3C43).withOpacity(0.36)),
                                              )
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Get.to(() => FullBodyScan());
                                            },
                                            child: const Text(
                                                "Allow",
                                                style: TextStyle(
                                                    fontWeight: TSizes.fontWeight400,
                                                    fontSize: 17,
                                                    color: Color(0xFF007AFF),
                                                    letterSpacing: -0.41,
                                                    fontFamily: 'Manrope'
                                                )
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    buttonText: 'BEGIN AI FULL BODY SCAN'
                )
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
                height: 48,
                child: TOutlinedButton(
                    onTap: (){
                      Get.back();
                      Get.to(() => const NewManuelMeasurementScreen());
                    },
                    buttonText: 'INPUT MEASUREMENTS MANUALLY')
            )
          ],
        ),
      ),
    );
  }
}
