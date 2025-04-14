part of 'my_lead_bloc.dart';

sealed class MyLeadEvent {}

class MyLeadsFetched extends MyLeadEvent {
  MyLeadsFetched();
}
