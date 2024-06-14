import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/tailor/ReqestDetailScreen/screens/request_detail.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => RequestDetailScreen());
      },
      child: Container(
        height: 92,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF0F0F0),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children:

          [
            // image
            Container(
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image(image: AssetImage(TImages.galleryImage))
            ),
            SizedBox(width: 5,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // item name

                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                          TextSpan(
                            text: 'Bershka Jeans',
                          )
                        ]
                    )
                ),

                SizedBox(height: 10,),
                // size and color
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
              ],
            ),

            Spacer(),



            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Icons

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFF1C1B20).withOpacity(0.4),
                          size: 20,
                        )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.check,
                          color: Color(0xFF1C1B20).withOpacity(0.4),
                          size: 20,
                        )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.close,
                          color: Color(0xFF1C1B20).withOpacity(0.4),
                          size: 20,
                        )
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                // amount

                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                          TextSpan(
                              text: 'NGN 20,000.00',
                              style: TextStyle(
                                  fontSize: 16
                              )
                          )
                        ]
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}