import 'package:flutter/material.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .15,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.mainColor,
                            child: Text(
                              'JM',
                              style: TextStyle(
                                fontFamily: 'Anton',
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jasper Janboy Monterey',
                                style: AppTextStyle.bodyTextMediumBold,
                              ),
                              Text(
                                'Agent Account',
                                style: AppTextStyle.bodyTextGrey,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '10',
                                style: AppTextStyle.bodyTextMediumBold,
                              ),
                              Text(
                                'Total Property',
                                style: AppTextStyle.bodyTextXSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(),
                          ),
                          Column(
                            children: [
                              Text(
                                '10',
                                style: AppTextStyle.bodyTextMediumBold,
                              ),
                              Text(
                                'Total Leads',
                                style: AppTextStyle.bodyTextXSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(),
                          ),
                          Column(
                            children: [
                              Text(
                                '\$1,400k',
                                style: AppTextStyle.bodyTextMediumBold,
                              ),
                              Text(
                                'Total Income',
                                style: AppTextStyle.bodyTextXSmall,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  Text(
                    'Other Information',
                    style: AppTextStyle.bodyTextBold,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'janboym@gmail.com',
                              style: AppTextStyle.bodyText,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20),
                            Text(
                              '+1 234 56789',
                              style: AppTextStyle.bodyText,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Address',
                              style: AppTextStyle.bodyText,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
