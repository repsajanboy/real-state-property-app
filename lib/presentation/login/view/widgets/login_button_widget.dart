import 'package:flutter/material.dart';

Widget buildLoginButton() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        backgroundColor: Color(0xff0987f8),
        foregroundColor: Colors.white,
      ),
      child: Text("LOG IN"),
    ),
  );
}
