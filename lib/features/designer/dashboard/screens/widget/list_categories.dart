import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class HomeListCategories extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String brand;
  final String itemName;
  final String brandLogo;
  final String itemImage;
  const HomeListCategories({
    super.key, required this.title, required this.onPressed, required this.brand, required this.itemName, required this.brandLogo, required this.itemImage,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            IconButton(
                onPressed: onPressed,
                icon: const Image(image: AssetImage(TImages.arrowRight)))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwButtons,),
        Container(
          height: 200,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,

            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 215,
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: TColors.black),
                      image:  DecorationImage(
                        image: AssetImage(itemImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: Image(image: AssetImage(brandLogo)),
                            )
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Text(
                    brand,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: TSizes.sm,),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                              text: itemName,
                              style: TextStyle(
                                color: darkMode ? TColors.white : TColors.itemNameColor,
                                fontFamily: 'Manrope',
                              )
                          )
                        ]
                      )
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
          ),
        )
      ],
    );
  }
}