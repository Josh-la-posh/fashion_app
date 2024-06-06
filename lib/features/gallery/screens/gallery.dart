import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/gallery/screens/widgets/layout.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const GalleryScreenLayout(
        childWidget: SingleChildScrollView(
          child: Text('Gallery'),
        )
    );
  }
}
