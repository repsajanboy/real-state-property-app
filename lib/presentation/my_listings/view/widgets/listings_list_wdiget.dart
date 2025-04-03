import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';

Widget buildListingWidget(ListingProperty property) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 215, //change this
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${property.location?.address}',
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              child: Text(
                                '${property.location?.zip}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(property.images?[0] ?? ''),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
