import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../constants/sizes.dart';
import '../../constants/texts.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize48, fontWeight: TSizes.fontWeight800, color: TColors.textBlack, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    headlineMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize32, fontWeight: TSizes.fontWeight500, color: TColors.secTextWhite, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),

    // titleLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize18, fontWeight: TSizes.fontWeightLg, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight24 / TSizes.fontSize22),
    // titleMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize20, fontWeight: TSizes.fontWeight400, color: TColors.textBlack, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize16),
    // titleSmall: const TextStyle().copyWith(fontSize: TSizes.fontSize16, fontWeight: TSizes.fontWeightNm, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight24 / TSizes.fontSize16),
    //
    // bodyLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize20, fontWeight: TSizes.fontWeightNm, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing :TSizes.letterSpacingSm),
    bodyMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize16, fontWeight: TSizes.fontWeight400, color: TColors.textBlack, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    // bodySmall: const TextStyle().copyWith(fontSize: TSizes.fontSize10, fontWeight: TSizes.fontWeightMd, color: TColors.textCurrency, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    //
    // // bodyText1: const TextStyle().copyWith(fontSize: TSizes.fontSize14, fontWeight: TSizes.fontWeightMd, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    //
    // labelMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize14, fontWeight: TSizes.fontWeightNm, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize14),
    // labelSmall: const TextStyle().copyWith(fontSize: TSizes.fontSize12, fontWeight: TSizes.fontWeightNm, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize12),

  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize48, fontWeight: TSizes.fontWeight800, color: TColors.textWhite, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    headlineMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize32, fontWeight: TSizes.fontWeight500, color: TColors.textBlack, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),

    // titleLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize18, fontWeight: TSizes.fontWeightLg, color: TColors.white, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight24 / TSizes.fontSize22),
    // titleMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize16, fontWeight: TSizes.fontWeightLg, color: TColors.white, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize16),
    // titleSmall: const TextStyle().copyWith(fontSize: TSizes.fontSize16, fontWeight: TSizes.fontWeightNm, color: TColors.textSecondary, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight24 / TSizes.fontSize16),
    //
    // bodyLarge: const TextStyle().copyWith(fontSize: TSizes.fontSize20, fontWeight: TSizes.fontWeightNm, color: TColors.textPrimaryO80, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    bodyMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize16, fontWeight: TSizes.fontWeight400, color: TColors.white, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    // bodySmall: const TextStyle().copyWith(fontSize: TSizes.fontSize10, fontWeight: TSizes.fontWeightMd, color: TColors.white, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    //
    // // bodyText1: const TextStyle().copyWith(fontSize: TSizes.fontSize14, fontWeight: TSizes.fontWeightMd, color: TColors.textSecondary, fontFamily: TTexts.fontFamily, letterSpacing: TSizes.letterSpacingSm),
    //
    // labelMedium: const TextStyle().copyWith(fontSize: TSizes.fontSize14, fontWeight: TSizes.fontWeightNm, color: TColors.textSecondary, letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize14),
    // labelSmall: const TextStyle().copyWith(fontSize: TSizes.fontSize12, fontWeight: TSizes.fontWeightNm, color: TColors.textSecondary.withOpacity(0.8), letterSpacing: TSizes.letterSpacingSm, height: TSizes.lineHeight22 / TSizes.fontSize12),
  );
}