import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/common/styles/spacing_style.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/elevated_button.dart';
import 'package:sytle_to_perfection/common/widgets/buttons/outlined_button.dart';
import 'package:sytle_to_perfection/features/tailor/ReqestDetailScreen/screens/widget/set_price_modal.dart';
import 'package:sytle_to_perfection/utils/constants/images.dart';
import 'package:sytle_to_perfection/utils/constants/texts.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart';

class RequestOutfit extends StatelessWidget {
  const RequestOutfit({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: TSpacingStyle.scaffoldPadding,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: THelperFunctions.screenHeight() * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: const Image(
                    image: AssetImage(
                      TImages.requestImg,
                    ),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.13),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Full',
                          style: TextStyle(
                            color: Color(0xFFFEFEFE),
                            fontFamily: TTexts.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Icon(Icons.arrow_drop_down, color: const Color(0xFFFEFEFE).withOpacity(0.7),)
                      ],
                    ),
                  )
              ),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.13),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Full',
                          style: TextStyle(
                              color: Color(0xFFFEFEFE),
                              fontFamily: TTexts.fontFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Icon(Icons.arrow_drop_down, color: const Color(0xFFFEFEFE).withOpacity(0.7),)
                      ],
                    ),
                  )
              ),
            ],
          ),
          const SizedBox(height: 8,),

          // indicator

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF0028CE)
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFD9D9D9)
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFD9D9D9)
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFD9D9D9)
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFD9D9D9)
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),

          // name

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                            text: 'S - 26  |  Blue  |  x1 ',
                            style: TextStyle(
                                color: darkMode ? Colors.white : TColors.addressText
                            )
                        )
                      ]
                  )
              ),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        const TextSpan(
                            text: 'View Measurements',
                            style: TextStyle(
                              fontSize: 16
                            )
                        )
                      ]
                  )
              ),
            ],
          ),

          const SizedBox(height: 40,),

          // Buttons

          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: TOutlinedButton(onTap: () {}, buttonText: 'Reject'),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: TElevatedButton(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (cdx) => const SetPriceModal()
                        );
                      },
                      buttonText: 'Accept'
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
