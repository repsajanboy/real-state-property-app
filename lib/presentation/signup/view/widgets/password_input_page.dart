import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

Widget passwordInputPage(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(16),
    child: Stack(
      children: [
        Text("Now secure it with password",
            style: AppTextStyle.signupTitleText),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                cursorColor: Colors.black,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Your password",
                  hintStyle: AppTextStyle.textFieldHintText,
                  hintMaxLines: 1,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.menu);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 45),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                backgroundColor: AppColors.mainColor,
                foregroundColor: Colors.white,
              ),
              child: Text(
                "SUBMIT",
                style: AppTextStyle.buttonText,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
