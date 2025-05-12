import 'package:flutter/material.dart';
import 'package:real_state_property/styles/colors.dart';

class AppTextStyle {
  static const TextStyle heading = TextStyle(
    fontFamily: 'Anton',
  );

  static const TextStyle onboardingTitleText = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 24.0,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle onboardingBodyText = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16.0,
    color: Colors.black,
  );

  static const TextStyle loginTitleText = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 26.0,
    fontWeight: FontWeight.w700,
    color: AppColors.mainColor,
  );

  static const TextStyle loginLabelFieldText = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16.0,
    color: Colors.black45
  );

    static const TextStyle signupTitleText = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: AppColors.mainColor,
  );

   static const TextStyle signupHintText = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16.0,
    color: Colors.black45
  );

  static const TextStyle bodyText = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.black,
  );

  static const TextStyle bodyTextBold = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.white,
    fontSize: 16.0,
  );
}
