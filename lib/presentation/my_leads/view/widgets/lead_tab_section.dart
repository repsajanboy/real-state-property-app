import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

class LeadTabSection extends StatelessWidget {
  const LeadTabSection({super.key, this. lead});

  final Lead? lead;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Status"),
              Tab(text: "Visited"),
              Tab(text: "Notes"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(
                            'Status:',
                            style: AppTextStyle.bodyTextGrey,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "${lead?.status}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Financing Status:',
                            style: AppTextStyle.bodyTextGrey,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "${lead?.financingStatus}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Type:',
                            style: AppTextStyle.bodyTextGrey,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "${lead?.typeOfLead}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Contact Method:',
                            style: AppTextStyle.bodyTextGrey,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "${lead?.preferredContactMethod}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'February 14, 2025',
                        style: AppTextStyle.bodyText,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'April 30, 2025',
                        style: AppTextStyle.bodyText,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'May 15, 2025',
                        style: AppTextStyle.bodyText,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'June 14, 2025',
                        style: AppTextStyle.bodyText,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'July 14, 2025',
                        style: AppTextStyle.bodyText,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        style: AppTextStyle.bodyText,
                        autocorrect: false,
                        maxLines: 10,
                        decoration: InputDecoration(
                          hintText: "Add notes",
                          hintStyle: AppTextStyle.bodyTextGrey,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: AppColors.mainColor,
                          ),
                          child: Text(
                            "Save",
                            style: AppTextStyle.buttonText,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
