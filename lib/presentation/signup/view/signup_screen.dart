import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: [
          _firstAndLastNamePage(),
          _emailInputPage(),
          _passwordInputPage(),
        ],
      ),
    );
  }

  Widget _firstAndLastNamePage() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi there! Start creating your account.",
                style: TextStyle(
                  color: Color(0xff023563),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "First name",
                    hintMaxLines: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last name",
                    hintMaxLines: 1,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 45),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    backgroundColor: Color.fromARGB(255, 9, 135, 248),
                    foregroundColor: Colors.white),
                child: Text("NEXT"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _emailInputPage() {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Text(
            "What's your email address?",
            style: TextStyle(
              color: Color(0xff023563),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'you@example.com',
                    hintMaxLines: 1,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 9, 135, 248),
                  foregroundColor: Colors.white,
                ),
                child: Text("NEXT"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _passwordInputPage() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Stack(
        children: [
          Text(
            "Now secure it with password",
            style: TextStyle(
              color: Color(0xff023563),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Your password", hintMaxLines: 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 9, 135, 248),
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  "SUBMIT",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
