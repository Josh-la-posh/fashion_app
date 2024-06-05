import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/authentication/screens/onboarding/onboarding_final_page.dart';
import 'package:sytle_to_perfection/features/authentication/screens/signup/signup.dart';
import '../screens/login/login.dart';
import '../screens/onboarding/onboarding.dart';
import 'names.dart';

Map<String, WidgetBuilder> authRoutes = {
  AUTH_ONBOARDING_SCREEN_ROUTE: (context) => const OnboardingScreen(),
  AUTH_ONBOARDING_FINAL_SCREEN_ROUTE: (context) => const OnboardingFinalScreen(),
  AUTH_CREATE_ACCOUNT_SCREEN_ROUTE: (context) => const SignupScreen(),
  AUTH_LOGIN_SCREEN_ROUTE: (context) => const LoginScreen(),
  // AUTH_FORGOT_PASSWORD_SCREEN_ROUTE: (context) => const ForgotPasswordScreen(),
};