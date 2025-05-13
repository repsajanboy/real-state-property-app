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
    color: Colors.black45,
  );

  static const TextStyle signupTitleText = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: AppColors.mainColor,
  );

  static const TextStyle mainTitle = TextStyle(
    fontFamily: 'Anton',
    color: AppColors.mainColor,
    fontSize: 28.0,
  );

  static const TextStyle titleTextBold = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black87,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static const TextStyle listingNameBold = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 16.0,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle listingDetailText = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 12,
    color: Colors.black87,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyText = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.black,
  );

  static const TextStyle bodyTextSmall = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.black,
    fontSize: 14.0,
  );

  static const TextStyle bodyTextGrey = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.grey,
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

  static const TextStyle buttonTextLarge = TextStyle(
    fontFamily: 'Open Sans',
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static const TextStyle textFieldHintText = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 16.0,
    color: Colors.black45,
  );
}
