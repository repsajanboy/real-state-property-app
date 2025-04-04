import 'dart:convert';

import 'package:flutter/services.dart';

class ListingApi {
  Future<dynamic> getListings() async {
    final listings = await rootBundle.loadString('assets/json/listings.json');
    return json.decode(listings);
  }
}
