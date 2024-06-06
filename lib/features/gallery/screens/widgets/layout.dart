import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/utils/layouts/app_layout.dart';

class GalleryScreenLayout extends StatelessWidget {
  final Widget childWidget;
  const GalleryScreenLayout({super.key, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        currentRoute: RouteType.Gallery, childWidget: childWidget
    );
  }
}
