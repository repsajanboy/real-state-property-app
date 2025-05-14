import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/styles/text_styles.dart';

class TitleAddressSection extends StatelessWidget {
  const TitleAddressSection({super.key, this.property});

  final ListingProperty? property;

  @override
  Widget build(BuildContext context) {
    final propLocation = property?.location;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${property?.title}',
          style: AppTextStyle.listingNameBold,
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Color(0xff023563),
            ),
            Text(
              '${propLocation?.address} ${propLocation?.city} ${propLocation?.state} ${propLocation?.zip} ${propLocation?.country}',
              style: AppTextStyle.bodyTextGrey,
            ),
          ],
        ),
      ],
    );
  }
}
