import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final PageController _controller =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          _firstAndLastNamePage(),
          _emailInputPage(),
          _passwordInputPage(context),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "First name",
                    hintMaxLines: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Last name",
                    hintMaxLines: 1,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                },
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
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                },
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

  Widget _passwordInputPage(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Your password",
                    hintMaxLines: 1,
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
