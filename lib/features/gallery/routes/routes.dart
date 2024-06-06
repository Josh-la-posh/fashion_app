import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/gallery/routes/names.dart';
import 'package:sytle_to_perfection/features/gallery/screens/gallery.dart';

Map<String, WidgetBuilder> galleryRoutes = {
  GALLERY_SCREEN_ROUTE: (context) => const GalleryScreen(),
};