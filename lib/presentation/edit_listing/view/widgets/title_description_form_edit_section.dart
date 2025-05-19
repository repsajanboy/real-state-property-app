import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/styles/text_styles.dart';

class TitleDescriptionFormEditSection extends StatelessWidget {
  const TitleDescriptionFormEditSection({super.key, required this.property});

  final ListingProperty property;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PROPERTY TITLE',
          style: AppTextStyle.titleTextBold,
        ),
        SizedBox(height: 8.0),
        TextFormField(
          initialValue: property.title,
          style: AppTextStyle.bodyText,
          minLines: 1,
          maxLines: null,
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Enter title',
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'PROPERTY DESCRIPTION',
          style: AppTextStyle.titleTextBold,
        ),
        SizedBox(height: 8.0),
        TextFormField(
          initialValue: property.description,
          style: AppTextStyle.bodyText,
          maxLines: 4,
          decoration: InputDecoration(
            isDense: true,
            hintText: "Enter description",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
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
    );
  }
}
