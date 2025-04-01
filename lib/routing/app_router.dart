import 'package:flutter/material.dart';
import 'package:real_state_property/presentation/add_listing/add_listing.dart';
import 'package:real_state_property/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:real_state_property/presentation/edit_listing/edit_listing.dart';
import 'package:real_state_property/presentation/login/login.dart';
import 'package:real_state_property/presentation/onboarding/onboarding.dart';
import 'package:real_state_property/presentation/signup/signup.dart';
import 'package:real_state_property/routing/app_router_names.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.landing:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case RouteNames.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case RouteNames.loginEmail:
        return MaterialPageRoute(
          builder: (_) => const LoginScreenWithEmaiScreen(),
        );
      case RouteNames.signup:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case RouteNames.menu:
        return MaterialPageRoute(
          builder: (_) => const BottomNavScreen(currIndex: 0,),
        );
      case RouteNames.addListing:
        return MaterialPageRoute(
          builder: (_) => const AddListingScreen(),
        );
      case RouteNames.editListing:
        return MaterialPageRoute(
          builder: (_) => const EditListingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route define for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
