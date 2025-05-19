import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

class LeadDetailsSection extends StatelessWidget {
  const LeadDetailsSection({super.key, this.lead});

  final Lead? lead;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12.0,
                ),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(75),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                      ),
                    ]),
              ),
              SizedBox(width: 28),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${lead?.name}',
                      style: AppTextStyle.leadsNameBold,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '${lead?.email}',
                      style: AppTextStyle.leadsSub,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '${lead?.phone}',
                      style: AppTextStyle.leadsSub,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: AppColors.mainColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
