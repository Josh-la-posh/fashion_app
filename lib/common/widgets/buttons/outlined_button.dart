import 'package:flutter/material.dart';

class TOutlinedButton extends StatelessWidget {
  TOutlinedButton({
    super.key,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
    required this.buttonText,
  });
  VoidCallback onTap;
  Color? backgroundColor;
  Color? textColor;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // side: BorderSide(color: borderColor)
            backgroundColor: backgroundColor
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
