import 'package:real_state_property/data/api/listing_api.dart';
import 'package:real_state_property/data/model/listings/listings_model.dart';

class ListingRepository {
  final ListingApi listingApi = ListingApi();

  Future<ListingsModel> getListings() async {
    final result = await listingApi.getListings();
    return ListingsModel.fromJson(result);
  }
}