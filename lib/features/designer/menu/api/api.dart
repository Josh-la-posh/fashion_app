import 'package:flutter/material.dart';

class MenuService {
  static final MenuService _instance = MenuService._();

  MenuService._();

  static MenuService get instance => _instance;
}