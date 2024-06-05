import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';

import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    filled: true,
    fillColor: TColors.white,
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: TColors.black,
    labelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize11, color: TColors.formBlackText, fontWeight: TSizes.fontWeight400),
    hintStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize16, color: TColors.formBlackText, fontWeight: TSizes.fontWeight400),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    // floatingLabelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize14, color: TColors.textPrimary.withOpacity(0.8)),
    border: const UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: TColors.formBorderColor)
    ),
    enabledBorder: const UnderlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 2, color: TColors.formBorderColor),
    ),
    focusedBorder: const UnderlineInputBorder().copyWith(
        // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
        borderSide: const BorderSide(width: 2, color: TColors.formBlackText)
    ),
    errorBorder: const UnderlineInputBorder().copyWith(
        // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
        borderSide: const BorderSide(width: 2, color: TColors.danger)
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
        // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
        borderSide: const BorderSide(width: 2, color: TColors.danger)
    ),

  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: TColors.black,
    errorMaxLines: 3,
    prefixIconColor: TColors.grey,
    suffixIconColor: TColors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize11, color: TColors.textWhite, fontWeight: TSizes.fontWeight400),
    hintStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize16, color: TColors.textWhite, fontWeight: TSizes.fontWeight400),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    // floatingLabelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSize14, color: TColors.textPrimary.withOpacity(0.8)),
    border: const UnderlineInputBorder(
    borderSide: BorderSide(width: 2, color: TColors.textWhite)
    ),
    enabledBorder: const UnderlineInputBorder().copyWith(
    borderSide: const BorderSide(width: 2, color: TColors.textWhite),
    ),
    focusedBorder: const UnderlineInputBorder().copyWith(
    // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    borderSide: const BorderSide(width: 2, color: TColors.textWhite)
    ),
    errorBorder: const UnderlineInputBorder().copyWith(
    // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    borderSide: const BorderSide(width: 2, color: TColors.danger)
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
    // borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    borderSide: const BorderSide(width: 2, color: TColors.danger)
    ),
  );
}