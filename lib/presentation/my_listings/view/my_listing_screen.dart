import 'package:flutter/material.dart';
import 'package:real_state_property/presentation/my_listings/view/no_listing_screen.dart';

class MyListingScreen extends StatelessWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoListingScreen()
    );
  }
}