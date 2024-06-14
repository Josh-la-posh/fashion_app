import 'package:flutter/material.dart';
import 'package:sytle_to_perfection/features/designer/profile/screens/widgets/layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreenLayout(
        childWidget: SingleChildScrollView(
          child: Text('Profile'),
        )
    );
  }
}
