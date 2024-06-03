import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/features/authentication/screens/login/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Style To Perfection',
      home: LoginScreen(),
    );
  }
}
