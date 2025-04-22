import 'package:flutter/material.dart';

class AmenitiesSection extends StatelessWidget {
  const AmenitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AMENITIES',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
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
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Pet-Friendly',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Terrace',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
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
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Garden',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    value: false,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Gym',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
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
