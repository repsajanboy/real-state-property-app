import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/app_images.dart';
import 'package:real_state_property/styles/text_styles.dart';

import 'widgets/divider_widget.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/login_input_fields_widget.dart';
import 'widgets/social_icons_widget.dart';

class LoginScreenWithEmaiScreen extends StatelessWidget {
  const LoginScreenWithEmaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close_rounded,
              color: Color.fromARGB(255, 9, 135, 248),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 70,
                    minHeight: 70,
                    maxWidth: 150,
                    maxHeight: 150,
                  ),
                  child: Image.asset(AppImages.appIcon),
                ),
                Visibility(
                  child: Column(
                    children: [
                      buildDivider(),
                      buildSocialIcons(),
                    ],
                  ),
                ),
                buildLoginInputTextFields(),
                SizedBox(height: 16),
                buildLoginButton(context),
                _buildDontHaveAnAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDontHaveAnAccount(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account? ",
              style: AppTextStyle.bodyText,
            ),
            TextSpan(
              text: "Register",
              style: AppTextStyle.bodyTextBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, RouteNames.signup);
                },
            ),
          ],
        ),
      ),
    );
  }
}
