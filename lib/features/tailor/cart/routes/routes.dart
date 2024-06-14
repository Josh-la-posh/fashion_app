import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/tailor/cart/routes/names.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/tailor_cart.dart';
import 'package:sytle_to_perfection/features/tailor/cart/screens/tailor_cart_order_detail.dart';

Map<String, WidgetBuilder> tailorCartRoutes = {
  TAILOR_CART_SCREEN_ROUTE: (context) => const TailorCartScreen(),
  TAILOR_CART_ORDER_DETAIL_SCREEN_ROUTE: (context) => const TailorCartOrderDetail(),
};