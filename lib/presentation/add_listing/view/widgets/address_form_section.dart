import 'package:flutter/material.dart';
import 'package:real_state_property/styles/text_styles.dart';

class AddressFormSection extends StatelessWidget {
  const AddressFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ADDRESS',
          style: AppTextStyle.titleTextBold,
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: TextField(
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Country',
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
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'State / Province',
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
            )
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: TextField(
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'City',
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
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                style: AppTextStyle.bodyText,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Zip / Postal Code',
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
            )
          ],
        ),
        SizedBox(height: 8.0),
        TextField(
          style: AppTextStyle.bodyText,
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Address or street name',
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
      ],
    );
  }
}
