import 'package:flutter/material.dart';
import 'package:real_state_property/styles/app_images.dart';

class NoListingScreen extends StatelessWidget {
  const NoListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppImages.multiTasking),
              fit: BoxFit.cover,
            ),
            Text(
              "You are all set! Let's create your first listing.",
            ),
            Text(
              "tap + to create your listing.",
            )
          ],
        ),
      ),
    );
  }
}
