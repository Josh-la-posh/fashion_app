import 'package:flutter/material.dart';

class MeasurementProvider extends ChangeNotifier {
  bool? addToCart = false;

  setAddToCart() {
    addToCart = true;
    notifyListeners();
  }

  removeFromCart() {
    addToCart = false;
    notifyListeners();
  }
}