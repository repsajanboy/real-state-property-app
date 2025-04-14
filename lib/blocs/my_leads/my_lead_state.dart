part of 'my_lead_bloc.dart';

class MyLeadState extends Equatable {
  final LeadsModel? leads;

  const MyLeadState({
    this.leads,
  });

  MyLeadState copyWith({
    LeadsModel? leads,
  }) {
    return MyLeadState(leads: leads ?? this.leads);
  }

  @override
  List<Object?> get props => [
        leads,
      ];
}
