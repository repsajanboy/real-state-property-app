import 'package:flutter/material.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

Widget firstAndLastNamePage(PageController controller) {
  return Container(
    margin: EdgeInsets.all(16.0),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there! Start creating your account.",
              style: AppTextStyle.signupTitleText,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextFormField(
                autofocus: true,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "First name",
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
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextFormField(
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Last name",
                  hintStyle: AppTextStyle.textFieldHintText,
                  hintMaxLines: 1,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                );
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
                "NEXT",
                style: AppTextStyle.buttonText,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
