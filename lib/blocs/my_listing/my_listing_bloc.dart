import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:real_state_property/data/model/listings/listings_model.dart';
import 'package:real_state_property/data/repositories/listing_repository.dart';

part 'my_listing_event.dart';
part 'my_listing_state.dart';

class MyListingBloc extends Bloc<MyListingEvent, MyListingState> {
  MyListingBloc() : super(MyListingState()) {
    on<MyListingsFetched>(_fetchedListings);
  }

  final ListingRepository listingRepository = ListingRepository();

  Future<void> _fetchedListings(
    MyListingsFetched event,
    Emitter<MyListingState> emit,
  ) async {
    final listing = await listingRepository.getListings();
    emit(state.copyWith(listings: listing));
  }
}
