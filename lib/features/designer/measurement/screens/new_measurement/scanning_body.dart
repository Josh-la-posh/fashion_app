import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import 'new_scan_measurement_review.dart';

class FullBodyScan extends StatelessWidget {
  const FullBodyScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const BackButton(color: Colors.white,),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined, color: Colors.white,))
        ],
        title: RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.titleMedium,
                children: const <TextSpan> [
                  TextSpan(
                      text: 'Full Body Scan',
                      style: TextStyle(
                          color: Colors.white
                      )
                  )
                ]
            )
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: THelperFunctions.screenHeight(),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18)
            ),
            child: const Image(image: AssetImage(TImages.dressRoomImg)),
          ),
          Positioned(
            bottom: 50,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                            side: MaterialStatePropertyAll(BorderSide(
                              color: Color(0xFFDEDEDE),
                              width: 1
                            ))
                          ),
                          child: const Text(
                            'RE-SCAN',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Manrose',
                              color: Colors.black
                            ),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => NewScanMeasurementReviewScreen(title: 'New Measurements',));
                          },
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color(0xFF2A2B24)),
                              side: MaterialStatePropertyAll(BorderSide(
                                  color: Color(0xFFDEDEDE),
                                  width: 1,
                              ))
                          ),
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'Manrose',
                                color: Colors.white
                            ),
                          )
                      ),
                    ),
                  )
                ],
          )
          )
        ],
      )
    );
  }
}
