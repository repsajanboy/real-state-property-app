import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';

class UploadPhotoListingScreen extends StatelessWidget {
  const UploadPhotoListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "2/2",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Color(0xff023563),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.menu);
          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff023563),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upload your",
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Color(0xff023563),
                      ),
                    ),
                    Text(
                      "Property Photos here",
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Color(0xff023563),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Pick Image',
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 8.0),
                    Text("Upload photo"),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
