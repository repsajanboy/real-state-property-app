import 'package:flutter/services.dart';

class ListingApi {
  Future<dynamic> getListings() async {
    return await rootBundle.loadString('assets/json/listings.json');
  }
}
