import 'package:flutter/material.dart';
import 'package:real_state_property/styles/text_styles.dart';

Widget buildLoginInputTextFields() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            labelStyle: AppTextStyle.loginLabelFieldText,
            hintText: "you@example.com",
            hintStyle: AppTextStyle.loginLabelFieldText,
            hintMaxLines: 1,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: AppTextStyle.loginLabelFieldText,
            hintText: "Your password",
            hintStyle: AppTextStyle.loginLabelFieldText,
            hintMaxLines: 1,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
          ),
        ),
      ),
    ],
  );
}
