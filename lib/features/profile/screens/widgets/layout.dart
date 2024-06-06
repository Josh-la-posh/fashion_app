import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/layouts/app_layout.dart';

class ProfileScreenLayout extends StatelessWidget {
  final Widget childWidget;
  const ProfileScreenLayout({super.key, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        currentRoute: RouteType.Profile, childWidget: childWidget
    );
  }
}
