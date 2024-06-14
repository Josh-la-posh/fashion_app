import 'package:flutter/material.dart';

class ProfileService {
  static final ProfileService _instance = ProfileService._();

  ProfileService._();

  static ProfileService get instance => _instance;
}