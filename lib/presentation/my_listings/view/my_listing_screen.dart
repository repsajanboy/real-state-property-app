import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/text_styles.dart';

import 'widgets/details_section.dart';
import 'widgets/title_address_section.dart';

class MyListingScreen extends StatelessWidget {
  const MyListingScreen({super.key, required this.property});
  final ListingProperty property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Color(0xff023563),
        label: Text(
          'START OPEN HOUSE',
          style: AppTextStyle.buttonText,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      )
                    ]),
                child: Image.network(
                  "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?cs=srgb&dl=pexels-expect-best-79873-323780.jpg&fm=jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xff023563),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                          ),
                          iconSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Color(0xff023563),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.map,
                              ),
                              iconSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 2.0),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Color(0xff023563),
                            ),
                            child: IconButton(
                              onPressed: () {
                                showOptionsDialog(context, property);
                              },
                              icon: Icon(
                                Icons.more_vert,
                              ),
                              iconSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleAddressSection(property: property),
                    SizedBox(height: 20),
                    DetailsSection(property: property)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> showOptionsDialog(
    BuildContext context,
    ListingProperty property,
  ) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Options',
              style: AppTextStyle.titleTextBold,
            ),
          ),
          backgroundColor: Colors.grey.shade200,
          content: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xff023563),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(
                        context,
                        RouteNames.editListing,
                        arguments: property,
                      );
                    },
                    label: Text('Edit listing'),
                    icon: Icon(
                      Icons.edit,
                      size: 18.0,
                      color: Color(0xff023563),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    label: Text('Delete listing'),
                    icon: Icon(
                      Icons.delete,
                      size: 18.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
