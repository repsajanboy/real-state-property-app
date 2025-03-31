import 'package:flutter/material.dart';

Widget buildDivider() {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          child: Divider(
            color: Colors.black,
            height: 50,
          ),
        ),
      ),
      Text("OR"),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Divider(
            color: Colors.black,
            height: 50,
          ),
        ),
      ),
    ],
  );
}
