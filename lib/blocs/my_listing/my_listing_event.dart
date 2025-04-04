part of 'my_listing_bloc.dart';

@immutable
sealed class MyListingEvent {}

class MyListingsFetched extends MyListingEvent {
  MyListingsFetched();
}