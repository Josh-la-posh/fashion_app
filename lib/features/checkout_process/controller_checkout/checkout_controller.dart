import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  static CheckoutController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  /// Update Current Index to next page
  void nextPage() {
    int page = currentPageIndex.value + 2;
    pageController.jumpToPage(page);
    print(page);
  }
}