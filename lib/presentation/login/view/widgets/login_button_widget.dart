import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/text_styles.dart';

Widget buildLoginButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteNames.menu);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        backgroundColor: Color(0xff0987f8),
        foregroundColor: Colors.white,
      ),
      child: Text(
        "LOG IN",
        style: AppTextStyle.buttonText,
      ),
    ),
  );
}
