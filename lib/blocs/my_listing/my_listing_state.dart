part of 'my_listing_bloc.dart';

class MyListingState extends Equatable {
  final ListingsModel? listings;

  const MyListingState({
    this.listings,
  });

  MyListingState copyWith({
    ListingsModel? listings,
  }) {
    return MyListingState(listings: listings ?? this.listings);
  }

  @override
  List<Object?> get props => [
        listings,
      ];
}
