import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry verticalPadding = EdgeInsets.only(
    bottom: TSizes.lg,
    top: TSizes.lg
  );

  static const EdgeInsetsGeometry horizontalPadding = EdgeInsets.only(
    left: 25,
    right: 25,
  );

  static const EdgeInsetsGeometry scaffoldPadding = EdgeInsets.symmetric(
    horizontal: 25,
    vertical: 15
  );
}