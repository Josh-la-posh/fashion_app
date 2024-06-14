import 'package:flutter/material.dart';
import '../screens/gallery.dart';
import '../screens/item_detail.dart';
import 'names.dart';

Map<String, WidgetBuilder> galleryRoutes = {
  GALLERY_SCREEN_ROUTE: (context) => const GalleryScreen(),
  GALLERY_DETAIL_SCREEN_ROUTE: (context) => const GalleryItemDetail(),
};