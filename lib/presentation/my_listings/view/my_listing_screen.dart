import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/blocs/bloc_barrel.dart';
import 'package:real_state_property/presentation/my_listings/view/widgets/listings_list_wdiget.dart';

class MyListingScreen extends StatelessWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My Listings",
                        style: TextStyle(
                          //google font anton
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
            BlocBuilder<MyListingBloc, MyListingState>(builder: (context, state) {
              return Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(bottom: 25.0),
                    itemCount: state.listings?.properties?.length,
                    itemBuilder: (BuildContext context, int index) {
                      final property = state.listings?.properties?[index];
                      return buildListingWidget(property!);
                  },),
                ),
              );
            },),
          ],
        ),
      ),
    );
  }
}
