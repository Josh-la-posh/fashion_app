import 'package:flutter/material.dart';

class TailorService {
  static final TailorService _instance = TailorService._();

  TailorService._();

  static TailorService get instance => _instance;
}