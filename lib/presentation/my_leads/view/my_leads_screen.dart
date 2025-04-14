import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/blocs/bloc_barrel.dart';

import 'widgets/leads_list_widget.dart';

class MyLeadsScreen extends StatelessWidget {
  const MyLeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    "My Leads",
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Color(0xff023563),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          tooltip: "Search",
                          icon: Icon(
                            Icons.search,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          tooltip: "Filter",
                          icon: Icon(
                            Icons.filter_list,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          tooltip: "Export",
                          icon: Icon(
                            Icons.import_export,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<MyLeadBloc, MyLeadState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: state.leads?.leads?.length ?? 0,
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                    ),
                     itemBuilder: (BuildContext context, int index) {
                      final lead = state.leads?.leads?[index];
                      return buildLeadsWidget(context, lead);
                     },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
