import 'package:flutter/material.dart';

import '../screens/dress_room/dress_room.dart';
import '../screens/measurement/measurement.dart';
import '../screens/measurement_detail/measurement_detail.dart';
import '../screens/new_measurement/new_manual_measurement.dart';
import '../screens/new_measurement/new_scan_measurement_review.dart';
import '../screens/new_measurement/scanning_body.dart';
import '../screens/pattern/pattern.dart';
import 'names.dart';

Map<String, WidgetBuilder> measureRoutes = {
  MEASUREMENT_SCREEN_ROUTE: (context) => const MeasurementScreen(),
  NEW_MEASUREMENT_SCREEN_ROUTE: (context) => const NewManuelMeasurementScreen(),
  MEASUREMENT_DETAIL_SCREEN_ROUTE: (context) => MeasurementDetailScreen(),
  PATTERN_SCREEN_ROUTE: (context) => const PatternScreen(),
  DRESS_ROOM_SCREEN_ROUTE: (context) => const DressRoomScreen(),
  FULL_SCAN_SCREEN_ROUTE: (context) => const FullBodyScan(),
  NEW_SCAN_REVIEW_SCREEN_ROUTE: (context) => NewScanMeasurementReviewScreen()
};