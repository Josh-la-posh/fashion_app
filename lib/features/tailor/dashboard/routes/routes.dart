import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/tailor/ReqestDetailScreen/screens/request_detail.dart';
import '../screens/home.dart';
import 'names.dart';

Map<String, WidgetBuilder> tailorDashboardRoutes = {
  TAILOR_DASHBOARD_SCREEN_ROUTE: (context) => const TailorHomeScreen(),
  TAILOR_REQUEST_DETAIL_SCREEN_ROUTE: (context) => const RequestDetailScreen(),
};