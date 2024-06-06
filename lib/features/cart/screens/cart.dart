import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/cart/screens/widgets/layout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CartScreenLayout(
        childWidget: SingleChildScrollView(
      child: Text('Cart'),
    )
    );
  }
}
