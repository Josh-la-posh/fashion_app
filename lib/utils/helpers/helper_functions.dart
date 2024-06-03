import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../configs/env_config.dart';

class THelperFunctions {

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        }
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(String date, {String format = 'MMM dd'}) {
    final dateTime = DateTime.parse(date);
    return DateFormat(format).format(dateTime);
  }

  static String getFormattedTime(String date, {String format = 'h:mm a'}) {
    final dateTime = DateTime.parse(date);
    return DateFormat(format).format(dateTime);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets<T>(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i+= rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static String getStringMultiplication(String a, String b) {
    int? intNum1 = int.tryParse(a);
    int? intNum2 = int.tryParse(b);
    int result;

    if (intNum1 != null && intNum2 != null) {
      result = intNum1 * intNum2;
      return result.toString();
    } else {
      result = 0;
      return result.toString();
    }
    // return result.toString();
  }

  static int addUpBooleans(List<bool> arr) {
    int num = 0;
    for (bool t in arr) {
      if (t == true) {
        num += 1;
      }
    }
    return num;
  }

  static String maskEmail(String email) {
    String maskedEmail = '';
    List<String> parts = email.split('@');

    if (parts.length == 2) {
      String username = parts[0];
      String domain = parts[1];

      if (username.isNotEmpty) {
        String firstLetter = username[0];
        String maskedUsername = '$firstLetter${'*' * (username.length - 1)}';
        maskedEmail = '$maskedUsername@$domain';
      }
    }

    return maskedEmail;
  }

  static String maskPhoneNumberHelper(String phoneNumber) {
    if (phoneNumber.length < 6) {
      // Handle invalid phone numbers
      return phoneNumber;
    }

    // Extract the first three digits
    String prefix = phoneNumber.substring(0, 3);

    // Extract the last three digits
    String suffix = phoneNumber.substring(phoneNumber.length - 3);

    // Replace the middle digits with asterisks
    String middleDigits = phoneNumber.substring(3, phoneNumber.length - 3);
    middleDigits = '*' * middleDigits.length;

    // Concatenate the formatted phone number
    String formattedPhoneNumber = prefix + middleDigits + suffix;

    return formattedPhoneNumber;
  }

  static String getInitials(firstName, lastName) {
    String firstInitial = firstName[0];
    String lastInitial = lastName[0];
    return '$firstInitial $lastInitial';
  }

  static void showDebugMessageInConsole(List<String> message) {
    if (EnvConfigurationModule.instance.getEnvType() == 'DEV') {
      print(message);
    }
  }

  // static void showTextForDuration(
  //     BuildContext context,
  //     String text,
  //     {Duration duration = const Duration(seconds: 3)}
  //     ) async {
  //   final overlayState = Overlay.of(context);
  //   final overlayEntry = OverlayEntry(
  //       builder: (context) => Container(
  //         width: THelperFunctions.screenWidth() * 0.4,
  //         height: 40,
  //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
  //         // margin: EdgeInsets.only(top: THelperFunctions.screenHeight() - 600),
  //         decoration: BoxDecoration(
  //           color: TColors.primary,
  //           borderRadius: BorderRadius.circular(6),
  //         ),
  //         child: Text(
  //           text,
  //           style: Theme.of(context).textTheme.labelSmall,
  //         ),
  //       )
  //   );
  //
  //   overlayState!.insert(overlayEntry);
  //   await Future.delayed(duration);
  //   overlayEntry.remove();
  // }
}