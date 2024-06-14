import 'package:flutter/material.dart';

class TailorTagWidget extends StatelessWidget {
  const TailorTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Color(0xFFEFEDFC),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4)
            ),
          ),
          SizedBox(width: 8,),
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                        text: 'Vintage',
                        style: TextStyle(
                            color: Color(0xFF614FE0),
                        )
                    )
                  ]
              )
          ),
        ],
      ),
    );
  }
}
