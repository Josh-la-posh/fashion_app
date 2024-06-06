import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/measurement/routes/names.dart';
import 'package:sytle_to_perfection/features/measurement/screens/measurement.dart';
import 'package:sytle_to_perfection/features/measurement/screens/new_measurement.dart';

Map<String, WidgetBuilder> measureRoutes = {
  MEASUREMENT_SCREEN_ROUTE: (context) => const MeasurementScreen(),
  NEW_MEASUREMENT_SCREEN_ROUTE: (context) => const NewMeasurementScreen(),
};