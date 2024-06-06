import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/layouts/app_layout.dart';

class CartScreenLayout extends StatelessWidget {
  final Widget childWidget;
  const CartScreenLayout({super.key, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        currentRoute: RouteType.Cart, childWidget: childWidget
    );
  }
}
