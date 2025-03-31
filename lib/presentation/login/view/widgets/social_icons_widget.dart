import 'package:flutter/material.dart';
import 'package:real_state_property/styles/app_images.dart';

Widget buildSocialIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          AppImages.fbIcon,
          width: 50,
          height: 50,
        ),
        iconSize: 50,
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          AppImages.googleIcon,
          width: 50,
          height: 50,
        ),
        iconSize: 24,
      ),
    ],
  );
}
