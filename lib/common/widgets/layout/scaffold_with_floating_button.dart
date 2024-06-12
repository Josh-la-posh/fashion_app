import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/constants/colors.dart';
import 'package:sytle_to_perfection/utils/helpers/helper_functions.dart';

import '../../styles/spacing_style.dart';
import '../buttons/elevated_button.dart';

class ScaffoldWithFloatingButton extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final String floatingActionButtonText;
  final VoidCallback onTap;
  const ScaffoldWithFloatingButton({super.key, required this.appBar, required this.body, required this.floatingActionButtonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.only(bottom: 30),
        child: body
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 48,
        width: double.infinity,
        margin: TSpacingStyle.scaffoldPadding,
        child: TElevatedButton(
          onTap: onTap,
          buttonText: floatingActionButtonText,
        ),
      ),
    );
  }
}
