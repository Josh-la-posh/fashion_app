import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/cart/routes/names.dart';
import 'package:sytle_to_perfection/features/checkout_process/payment_method.dart';

import '../../checkout_process/shipping_address.dart';

Map<String, WidgetBuilder> cartRoutes = {
  SHIPPING_ADDRESS_SCREEN_ROUTE: (context) => const ShippingAddressScreen(),
  PAYMENT_METHOD_SCREEN_ROUTE: (context) => const PaymentMethodScreen(),
};