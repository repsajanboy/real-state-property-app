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
        backgroundColor: Colors.blue,
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
              Positioned(
                bottom: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black.withValues(alpha: 0.6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.king_bed,
                            color: Colors.white,
                          ),
                          Text(
                            ' ${property.bedrooms}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black.withValues(alpha: 0.6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bathtub,
                            color: Colors.white,
                          ),
                          Text(
                            ' ${property.bathrooms}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black.withValues(alpha: 0.6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.apartment,
                            color: Colors.white,
                          ),
                          Text(
                            ' ${property.squareFeet} sqft',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black.withValues(alpha: 0.6),
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
                  ],
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          color: Colors.blueGrey.withValues(alpha: 0.6),
                          child: Text(
                            '\$ ${property.price}',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
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
                  left: 10.0,
                  right: 10.0,
                  bottom: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${property.location?.address} ${property.location?.city} ${property.location?.state}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${property.location?.zip} ${property.location?.country}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Property type: ',
                        ),
                        Text(
                          '${property.propertyType}',
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
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          child: Text(
                            '${property.description}',
                          ),
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
