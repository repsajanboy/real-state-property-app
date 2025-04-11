import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/blocs/bloc_barrel.dart';
import 'package:real_state_property/routing/app_router.dart';

import 'data/repositories/repositories_barrel.dart';

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ListingRepository>(
          create: (context) => ListingRepository(),
        ),
        RepositoryProvider(
          create: (context) => LeadRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MyListingBloc()..add(MyListingsFetched()),
          ),
          BlocProvider(
            create: (context) => MyLeadBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Reat State Property App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: router.onGenerateRoute,
        ),
      ),
    );
  }
}
