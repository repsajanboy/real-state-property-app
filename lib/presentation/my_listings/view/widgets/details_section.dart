import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/styles/text_styles.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, this.property});

  final ListingProperty? property;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
                    style: AppTextStyle.bodyTextWhite,
                  )
                ],
              ),
            ),
            Text(
              '\$ ${property?.price}',
              style: AppTextStyle.bodyTextMediumBold,
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
                    ' ${property?.bedrooms} beds',
                    style: AppTextStyle.bodyText,
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
                    ' ${property?.bathrooms} bath',
                    style: AppTextStyle.bodyText,
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
                    ' ${property?.squareFeet} sqft',
                    style: AppTextStyle.bodyText,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text('Property type: ', style: AppTextStyle.bodyTextBold),
            Text(
              '${property?.propertyType}',
              style: AppTextStyle.bodyTextGrey,
            ),
          ],
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description', style: AppTextStyle.bodyTextBold),
            SizedBox(height: 5.0),
            Text(
              '${property?.description}',
              style: AppTextStyle.bodyTextGrey,
            )
          ],
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amenities',
              style: AppTextStyle.bodyTextBold,
            ),
            SizedBox(height: 5.0),
            Wrap(
              children: [
                ...property!.amenities!.map(
                  (e) => Text(
                    '$e ',
                    style: AppTextStyle.bodyTextGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
