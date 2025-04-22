import 'package:flutter/material.dart';
import 'package:real_state_property/routing/app_router_names.dart';

import 'widgets/address_form_section.dart';
import 'widgets/amenities_section.dart';
import 'widgets/details_form_section.dart';
import 'widgets/title_description_form_section.dart';

class AddListingScreen extends StatelessWidget {
  const AddListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Color(0xff023563),
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            '1/2',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add your',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xff023563),
                        ),
                      ),
                      Text(
                        'Property details here',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xff023563),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleDescriptionFormSection(),
                    SizedBox(height: 8.0),
                    AddressFormSection(),
                    SizedBox(height: 8.0),
                    DetailsFormSection(),
                    SizedBox(height: 8.0),
                    AmenitiesSection(),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteNames.uploadListingPhoto);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff023563),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                        child: Text(
                          "CREATE NEW LISTING",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
