import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/texts.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: TTexts.fontFamily,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    // checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    // floatingActionButtonTheme: TFloatingButtonTheme.lightFloatingButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: TTexts.fontFamily,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    // checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    // floatingActionButtonTheme: TFloatingButtonTheme.darkFloatingButtonTheme,
  );
}