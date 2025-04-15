import 'package:flutter/material.dart';
import 'package:real_state_property/styles/app_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var email = TextEditingController();
    var phoneNumber = TextEditingController();
    var bio = TextEditingController();
    name.text = "Juan Tamad";
    email.text = "JuanTamad@gmail.com";
    phoneNumber.text = "11122243331";
    bio.text = "Juan Tamad Ako";
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: GetClipper(),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.drawerHeaderBG),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            width: 380,
            top: MediaQuery.of(context).size.height / 7,
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/33/52/87/33528736e35debe64cffaf15d1696445.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Name",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    controller: phoneNumber,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    controller: bio,
                    decoration: InputDecoration(
                      labelText: 'Biography',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 4.0);
    path.lineTo(size.width * 115, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
