import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

import 'widgets/lead_details_section.dart';
import 'widgets/lead_tab_section.dart';

class MyLeadScreen extends StatelessWidget {
  const MyLeadScreen({
    super.key,
    required this.lead,
  });

  final Lead lead;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          "Lead Details",
          style: AppTextStyle.titleTextWhite,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          LeadDetailsSection(lead: lead),
          Divider(
            height: 50,
            thickness: 5,
          ),
          Expanded(
            flex: 4,
            child: LeadTabSection(lead: lead),
          )
        ],
      ),
    );
  }
}
