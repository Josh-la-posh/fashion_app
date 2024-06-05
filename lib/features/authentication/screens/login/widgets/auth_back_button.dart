import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../utils/constants/colors.dart';

class AuthBackButton extends StatelessWidget {
  const AuthBackButton({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: darkMode ? TColors.white : TColors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
          onPressed: () {Get.back();},
          icon: Icon(
              Icons.arrow_back,
              color: darkMode ? TColors.white : TColors.black
          )
      ),
    );
  }
}