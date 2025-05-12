import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/app_images.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

import 'widgets/divider_widget.dart';
import 'widgets/social_icons_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      body: Stack(
        children: [
          _buildLoginScreenBackground(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 24.0),
              width: MediaQuery.of(context).size.width * .85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildWelcomeMessage(),
                  _buildCreateNewAccount(context),
                  buildDivider(),
                  buildSocialIcons(),
                  _buildTermAndPrivacy(),
                  _buildAlreadyHaveAnAccount(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLoginScreenBackground() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.loginBG),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildWelcomeMessage() {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text(
        "Start finding your next home!",
        style: AppTextStyle.loginTitleText,
      ),
    );
  }

  Widget _buildCreateNewAccount(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteNames.signup);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        backgroundColor: AppColors.mainColor,
        foregroundColor: Colors.white,
      ),
      child: Text(
        "Create an account",
        style: AppTextStyle.buttonText,
      ),
    );
  }
  
  Widget _buildTermAndPrivacy() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "By continuing, you agree to our",
              style: AppTextStyle.bodyText,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Terms of Use",
                    style: AppTextStyle.bodyTextBold,
                  ),
                  TextSpan(
                    text: " and ",
                    style: AppTextStyle.bodyText,
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: AppTextStyle.bodyTextBold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlreadyHaveAnAccount(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Already have an account? ",
              style: AppTextStyle.bodyText,
            ),
            TextSpan(
              text: "Sign in",
              style: AppTextStyle.bodyTextBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, RouteNames.loginEmail);
                },
            ),
          ],
        ),
      ),
    );
  }
}
