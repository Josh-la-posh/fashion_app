import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/designer/cart/screens/widgets/cart_item.dart';

class AllCartItems extends StatelessWidget {
  const AllCartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (_, index) {
        return CartItem();
      },
    );
  }
}
