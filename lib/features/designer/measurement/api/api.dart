import 'package:flutter/material.dart';

class MeasurementService {
  static final MeasurementService _instance = MeasurementService._();

  MeasurementService._();

  static MeasurementService get instance => _instance;
}