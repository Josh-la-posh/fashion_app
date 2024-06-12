import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/texts.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: TColors.black,
        backgroundColor: TColors.white,
        side: const BorderSide(color: TColors.borderColor),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
        textStyle: const TextStyle(fontSize: TSizes.fontSize16, color: TColors.textBlack, fontWeight: TSizes.fontWeight600, fontFamily: TTexts.fontFamily),
      )
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: TColors.white,
        backgroundColor: TColors.black,
        side: const BorderSide(color: TColors.white),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
        textStyle: const TextStyle(fontSize: TSizes.fontSize16, color: TColors.white, fontWeight: TSizes.fontWeight600, fontFamily: TTexts.fontFamily),
      )
  );
}