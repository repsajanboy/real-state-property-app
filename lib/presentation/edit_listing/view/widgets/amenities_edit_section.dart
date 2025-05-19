import 'package:flutter/material.dart';
import 'package:real_state_property/styles/text_styles.dart';

class AmenitiesEditSection extends StatelessWidget {
  const AmenitiesEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AMENITIES',
          style: AppTextStyle.titleTextBold,
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      'Pool',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Pet-Friendly',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Terrace',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      'Parking',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Garden',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Gym',
                      style: AppTextStyle.bodyTextBlackLight,
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
