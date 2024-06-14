import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class ItemDetailWidget extends StatelessWidget {
  const ItemDetailWidget({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image(image: AssetImage(TImages.galleryImage)),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Icon(
                Icons.keyboard_arrow_left,
                size: 35,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Container(
          height: 1,
          width: double.infinity,
          color: const Color(0xFFD9D9D9),
        ),
        const SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                              text: 'MOHAN',
                              style: TextStyle(
                                  color: darkMode ? TColors.white : Colors.black,
                                  fontFamily: 'Manrope',
                                  fontSize: TSizes.fontSize16
                              )
                          )
                        ]
                    )
                ),
              ],
            ),
            const SizedBox(height: 13,),
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                          text: 'Recycle Boucle Knit Cardigan Pink',
                          style: TextStyle(
                              color: darkMode ? TColors.white : const Color(0xFF555555),
                              fontFamily: 'Manrope',
                              fontSize: TSizes.fontSize16
                          )
                      )
                    ]
                )
            ),
            const SizedBox(height: 13,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                              text: 'Color',
                              style: TextStyle(
                                color: darkMode ? TColors.white : const Color(0xFF555555),
                              )
                          )
                        ]
                    )
                ),
                const SizedBox(width: 10,),
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 16,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 16,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: 16,
                      height: 16,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                              text: 'Size',
                              style: TextStyle(
                                color: darkMode ? TColors.white : const Color(0xFF555555),
                              )
                          )
                        ]
                    )
                ),
                const SizedBox(width: 10,),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text('S', style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Tenor Sans',
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFDEDEDE)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text('M', style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Tenor Sans',
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFDEDEDE)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text('L', style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Tenor Sans',
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Center(
              child: Container(
                width: 238,
                height: 39,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                  text: 'Try me',
                                  style: TextStyle(
                                      color: darkMode ? TColors.white : Colors.black,
                                      fontFamily: 'Manrope',
                                      fontSize: TSizes.fontSize16
                                  )
                              )
                            ]
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}