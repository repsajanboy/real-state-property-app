import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/routing/app_router_names.dart';

Widget buildLeadsWidget(BuildContext context, Lead? lead) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(
        context,
        RouteNames.leadScreen,
        arguments: lead
      );
    },
    child: Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg',
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${lead?.name}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '${lead?.email}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
