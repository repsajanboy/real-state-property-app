import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

class UploadPhotoListingScreen extends StatelessWidget {
  const UploadPhotoListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "2 / 2",
            style: AppTextStyle.bodyTextSmall,
          ),
        ),
        backgroundColor: AppColors.mainBgColor,
        leading: BackButton(
          color: AppColors.mainColor,
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
                  borderRadius: BorderRadius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAVE',
                  style: AppTextStyle.buttonTextLarge,
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
                      style: AppTextStyle.mainTitle,
                    ),
                    Text(
                      "Property Photos here",
                      style: AppTextStyle.mainTitle,
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
                      child: Icon(
                        Icons.add_a_photo,
                        color: AppColors.mainColor,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Upload photo",
                      style: AppTextStyle.bodyText,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
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
