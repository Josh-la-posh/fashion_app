import 'package:flutter/material.dart';
import '../screens/tailor_profile.dart';
import '../screens/tailor_search.dart';
import 'names.dart';

Map<String, WidgetBuilder> tailorRoutes = {
  TAILOR_SEARCH_SCREEN_ROUTE: (context) => const TailorSearchScreen(),
  TAILOR_PROFILE_SCREEN_ROUTE: (context) => const TailorProfileScreen()
};