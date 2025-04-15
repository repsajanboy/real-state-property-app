import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/app_images.dart';

class SidebarMenuScreen extends StatelessWidget {
  const SidebarMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.drawerHeaderBG),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImages.circleAvatar),
                  radius: 45.0,
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "Open Home ",
                    children: [
                      TextSpan(
                          text: "PRO 🌐",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Profile"),
            onTap: (){
              Navigator.pushNamed(context, RouteNames.profileScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Questions"),
          ),
          ListTile(
            leading: Icon(Icons.question_answer_outlined),
            title: Text("FAQ"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.pushNamed(context, RouteNames.login);
            },
          ),
        ],
      ),
    );
  }
}
