import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/blocs/bloc_barrel.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

import 'widgets/listings_list_widget.dart';

class MyListingsScreen extends StatelessWidget {
  const MyListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyListingBloc()
        ..add(
          MyListingsFetched(),
        ),
      child: Scaffold(
        backgroundColor: AppColors.mainBgColor,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My Listings",
                        style: AppTextStyle.mainTitle,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                tooltip: 'Search',
                                icon: Icon(
                                  Icons.search,
                                )),
                            IconButton(
                              onPressed: () {},
                              tooltip: 'Filter',
                              icon: Icon(
                                Icons.filter_list,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            BlocBuilder<MyListingBloc, MyListingState>(
              builder: (context, state) {
                return Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(bottom: 25.0),
                      itemCount: state.listings?.properties?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        if(state.listings!.properties!.isEmpty) {
                          return Center(child: CircularProgressIndicator(),);
                        }
                        final property = state.listings?.properties?[index];
                        return buildListingWidget(context, property);
                      },
                    ),
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
