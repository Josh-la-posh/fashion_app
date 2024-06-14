import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/designer/cart/screens/widgets/cart_item.dart';

class UpcomingCartItems extends StatelessWidget {
  const UpcomingCartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (_, index) {
        return CartItem();
      },
    );
  }
}
