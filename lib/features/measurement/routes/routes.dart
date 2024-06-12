import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/measurement/routes/names.dart';
import 'package:sytle_to_perfection/features/measurement/screens/dress_room/dress_room.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement/measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement_detail/measurement_detail.dart';
import 'package:sytle_to_perfection/features/measurement/screens/new_measurement/new_measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/pattern/pattern.dart';

Map<String, WidgetBuilder> measureRoutes = {
  MEASUREMENT_SCREEN_ROUTE: (context) => const MeasurementScreen(),
  NEW_MEASUREMENT_SCREEN_ROUTE: (context) => const NewMeasurementScreen(),
  MEASUREMENT_DETAIL_SCREEN_ROUTE: (context) => MeasurementDetailScreen(),
  PATTERN_SCREEN_ROUTE: (context) => PatternScreen(),
  DRESS_ROOM_SCREEN_ROUTE: (context) => DressRoomScreen()
};