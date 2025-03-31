import 'package:flutter/material.dart';

Widget buildLoginInputTextFields() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(fontSize: 16.0),
            hintText: "you@example.com",
            hintMaxLines: 1,
            border: OutlineInputBorder(),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(fontSize: 16.0),
            hintText: "Your password",
            hintMaxLines: 1,
            border: OutlineInputBorder(),
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
