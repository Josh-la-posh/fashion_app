import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sytle_to_perfection/data/provider/measurement_provider.dart';
import 'auth_provider.dart';

class RootProvider extends StatelessWidget {
  final Widget app;
  const RootProvider({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (_) => AuthProvider(),
        // ),
        ChangeNotifierProvider(
          create: (_) => MeasurementProvider(),
        ),
      ],
      child: app,
    );
  }
}
