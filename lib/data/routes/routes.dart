import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/tailor/cart/routes/routes.dart';
import 'package:sytle_to_perfection/features/tailor/dashboard/routes/routes.dart';
import '../../features/authentication/routes/routes.dart';
import '../../features/designer/cart/routes/routes.dart';
import '../../features/designer/dashboard/routes/routes.dart';
import '../../features/designer/gallery/routes/routes.dart';
import '../../features/designer/measurement/routes/routes.dart';
import '../../features/designer/profile/routes/routes.dart';
import '../../features/designer/tailor/routes/routes.dart';

Route _createCustomRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0); // Start position (off-screen to the right)
      var end = Offset.zero; // End position (centered)
      var curve = Curves.ease; // Define the animation curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

Map<String, WidgetBuilder> routes = {
  // ...splashRoutes,
  ...authRoutes,
  ...dashboardRoutes,
  ...cartRoutes,
  ...galleryRoutes,
  ...profileRoutes,
  ...measureRoutes,
  ...tailorRoutes,
  ...tailorDashboardRoutes,
  ...tailorCartRoutes
};


