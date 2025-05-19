import 'package:flutter/material.dart';
import 'package:real_state_property/styles/text_styles.dart';

class TitleDescriptionFormSection extends StatelessWidget {
  const TitleDescriptionFormSection({super.key});

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
        TextField(
          style: AppTextStyle.bodyText,
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Enter title',
            hintStyle: AppTextStyle.textFieldHintText,
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
                color: Colors.black54,
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
        TextField(
          style: AppTextStyle.bodyText,
          maxLines: 4,
          decoration: InputDecoration(
            isDense: true,
            hintText: "Enter description",
            hintStyle: AppTextStyle.textFieldHintText,
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
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
