import 'package:flutter/material.dart';

class AuthService {
  static final AuthService _instance = AuthService._();

  AuthService._();

  static AuthService get instance => _instance;
}