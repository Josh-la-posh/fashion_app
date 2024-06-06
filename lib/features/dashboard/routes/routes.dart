import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/dashboard/routes/names.dart';
import 'package:sytle_to_perfection/features/dashboard/screens/home.dart';

Map<String, WidgetBuilder> dashboardRoutes = {
  DASHBOARD_SCREEN_ROUTE: (context) => const HomeScreen(),
};