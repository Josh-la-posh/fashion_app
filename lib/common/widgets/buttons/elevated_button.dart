import 'package:flutter/material.dart';

class TElevatedButton extends StatelessWidget {
  TElevatedButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });
  VoidCallback onTap;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Center(
        child: Text(
            buttonText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
