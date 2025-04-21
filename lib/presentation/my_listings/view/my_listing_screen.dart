import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';

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
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${property.title}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff023563),
                            ),
                            Text(
                              '${property.location?.address} ${property.location?.city} ${property.location?.state} ${property.location?.zip} ${property.location?.country}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flag,
                                color: Colors.white,
                              ),
                              Text(
                                ' For Sale',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '\$ ${property.price}',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.king_bed_outlined,
                                color: Colors.black38,
                              ),
                              Text(
                                ' ${property.bedrooms} beds',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black38,
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.bathtub_outlined,
                                color: Colors.black38,
                              ),
                              Text(
                                ' ${property.bathrooms} bath',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black38,
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.apartment_outlined,
                                color: Colors.black38,
                              ),
                              Text(
                                ' ${property.squareFeet} sqft',
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Property type: ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${property.propertyType}',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '${property.description}',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
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
              style: TextStyle(
                color: Color(0xff023563),
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Edit listing'),
                    icon: Icon(
                      Icons.edit,
                      size: 18.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    label: Text('Delete listing'),
                    icon: Icon(
                      Icons.delete,
                      size: 18.0,
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
