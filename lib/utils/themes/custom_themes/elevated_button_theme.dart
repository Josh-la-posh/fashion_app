import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/texts.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: TColors.darkButton,
        disabledForegroundColor: Colors.grey,
        shape: RoundedRectangleBorder(side: BorderSide.none),
          // disabledBackgroundColor: TColors.primaryButton.withOpacity(0.4),
        textStyle: const TextStyle(fontSize: TSizes.fontSize16, color: TColors.textWhite, fontWeight: TSizes.fontWeight400, fontFamily: TTexts.fontFamily),
      )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: TColors.lightButton,
        disabledForegroundColor: Colors.grey,
        shape: RoundedRectangleBorder(side: BorderSide.none),
          // disabledBackgroundColor: TColors.primaryButton.withOpacity(0.4),
        textStyle: const TextStyle(fontSize: TSizes.fontSize16, color: TColors.textBlack, fontWeight: TSizes.fontWeight400, fontFamily: TTexts.fontFamily),
      )
  );
}