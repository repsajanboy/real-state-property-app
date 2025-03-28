import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router.dart';

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reat State Property App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}