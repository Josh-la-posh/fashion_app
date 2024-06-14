import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/designer/checkout_process/confirm_and_pay.dart';

class CheckoutController extends GetxController {
  static CheckoutController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;


  /// Update Current Index to next page
  void nextPage() {
    if (currentPageIndex.value == 3) {
      Get.back();
      Get.to(() => const ConfirmAndPayScreen());
      currentPageIndex.value = 0;
      print('nex ${currentPageIndex.value}');
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      print('next ${currentPageIndex.value}');
    }
  }

  /// Update Current Index to previous page
  void previousPage() {
    if (currentPageIndex.value == 0) {
      Get.back();
      print('pre ${currentPageIndex.value}');
    } else {
      int page = currentPageIndex.value - 1;
      pageController.jumpToPage(page);
      print('prev ${currentPageIndex.value}');
    }
  }
}