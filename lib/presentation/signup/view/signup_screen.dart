import 'package:flutter/material.dart';
import 'package:real_state_property/styles/colors.dart';

import 'widgets/email_input_page.dart';
import 'widgets/first_last_name_page.dart';
import 'widgets/password_input_page.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final PageController _controller =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainBgColor,
        leading: IconButton(
          onPressed: () {
            if (_controller.page == 0) {
              Navigator.of(context).pop();
            } else {
              _controller.previousPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            }
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color.fromARGB(255, 9, 135, 248),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close_rounded,
              color: Color.fromARGB(255, 9, 135, 248),
            ),
          )
        ],
      ),
      body: PageView(
        controller: _controller,
        children: [
          firstAndLastNamePage(_controller),
          emailInputPage(_controller),
          passwordInputPage(context),
        ],
      ),
    );
  }
}
