import 'package:flutter/material.dart';

class GalleryService {
  static final GalleryService _instance = GalleryService._();

  GalleryService._();

  static GalleryService get instance => _instance;
}