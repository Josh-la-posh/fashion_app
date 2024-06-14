import 'package:flutter/material.dart';

class CartService {
  static final CartService _instance = CartService._();

  CartService._();

  static CartService get instance => _instance;
}