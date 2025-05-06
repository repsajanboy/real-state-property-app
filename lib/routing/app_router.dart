import 'package:flutter/material.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/presentation/add_listing/add_listing.dart';
import 'package:real_state_property/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:real_state_property/presentation/edit_listing/edit_listing.dart';
import 'package:real_state_property/presentation/login/login.dart';
import 'package:real_state_property/presentation/my_leads/my_leads.dart';
import 'package:real_state_property/presentation/my_listings/my_listing.dart';
import 'package:real_state_property/presentation/onboarding/onboarding.dart';
import 'package:real_state_property/presentation/profile/profile.dart';
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
          builder: (_) => const BottomNavScreen(
            currIndex: 0,
          ),
        );
      case RouteNames.listingScreen:
        final property = routeSettings.arguments as ListingProperty;
        return MaterialPageRoute(
          builder: (_) => MyListingScreen(
            property: property,
          ),
        );
      case RouteNames.addListing:
        return MaterialPageRoute(
          builder: (_) => const AddListingScreen(),
        );
      case RouteNames.uploadListingPhoto:
        return MaterialPageRoute(
          builder: (_) => UploadPhotoListingScreen(),
        );
      case RouteNames.editListing:
        final property = routeSettings.arguments as ListingProperty;
        return MaterialPageRoute(
          builder: (_) => EditListingScreen(property: property),
        );
      case RouteNames.leadScreen:
        final lead = routeSettings.arguments as Lead;
        return MaterialPageRoute(
          builder: (_) => MyLeadScreen(lead: lead),
        );
      case RouteNames.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
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
