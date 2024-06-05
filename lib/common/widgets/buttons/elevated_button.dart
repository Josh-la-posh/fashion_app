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
    return Container(
      height: 40.0,
      child: ElevatedButton(
        onPressed: onTap,
        child: Center(child: Text(buttonText),),
      ),
    );
  }
}
