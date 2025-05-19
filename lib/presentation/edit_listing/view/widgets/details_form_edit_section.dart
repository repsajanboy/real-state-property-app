import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/styles/text_styles.dart';

class DetailsFormEditSection extends StatelessWidget {
  DetailsFormEditSection({super.key, required this.property});

  final ListingProperty property;

  final List<String> statusItems = [
    'For Sale',
    'In Escrow',
    'Sold',
    'Rental',
    'Short Sale'
  ];

  final List<String> typeItems = [
    'Home',
    'Townhouse',
    'Condo',
    'Coop',
    'Single Family Home',
    'Lot/Land',
    'TIC',
    'Loft',
    'Auction'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PRICE & DETAILS',
                style: AppTextStyle.titleTextBold,
              ),
              SizedBox(height: 8.0),
              TextFormField(
                initialValue: property.price.toString(),
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  hintText: "Enter property price",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: statusItems[0],
                          iconSize: 24.0,
                          hint: Text(
                            'Select status',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          items: statusItems
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: typeItems[1],
                          iconSize: 24.0,
                          hint: Text(
                            'Select type',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          items: typeItems
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextFormField(
                      initialValue: property.bedrooms.toString(),
                      style: AppTextStyle.bodyText,
                      decoration: InputDecoration(
                        hintText: "No. of Beds",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Flexible(
                    child: TextFormField(
                      initialValue: property.bathrooms.toString(),
                      style: AppTextStyle.bodyText,
                      decoration: InputDecoration(
                        hintText: "No. of Baths",
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              TextFormField(
                initialValue: property.squareFeet.toString(),
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  hintText: "Enter property size (square feet)",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
