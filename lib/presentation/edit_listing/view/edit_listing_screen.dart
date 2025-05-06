import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';

import 'widgets/address_form_edit_section.dart';
import 'widgets/amenities_edit_section.dart';
import 'widgets/details_form_edit_section.dart';
import 'widgets/title_description_form_edit_section.dart';

class EditListingScreen extends StatelessWidget {
  const EditListingScreen({super.key, required this.property});

  final ListingProperty property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff023563),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Update Listing Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Color(0xff023563),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(text: "Property info"),
                  Tab(text: "Property photos")
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        children: [
                          TitleDescriptionFormEditSection(
                            property: property,
                          ),
                          SizedBox(height: 8.0),
                          AddressFormEditSection(
                            property: property,
                          ),
                          SizedBox(height: 8.0),
                          DetailsFormEditSection(
                            property: property,
                          ),
                          SizedBox(height: 8.0),
                          AmenitiesEditSection(),
                          SizedBox(height: 10.0),
                          SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff023563),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0))),
                              child: Text(
                                "UPDATE LISTING",
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
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 16.0,
                              childAspectRatio: .7,
                            ),
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.image_rounded,
                                  color: Colors.grey.shade400,
                                  size: 60,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
