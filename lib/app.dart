import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sytle_to_perfection/data/provider/root_provider.dart';
import 'package:sytle_to_perfection/data/routes/routes.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/onboarding.dart';
import 'package:sytle_to_perfection/utils/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      app: GetMaterialApp(
        title: 'Style To Perfection',
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        routes: routes,
        home: const OnboardingScreen(),
      ),
    );
  }
}
