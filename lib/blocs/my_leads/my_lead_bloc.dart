import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';
import 'package:real_state_property/data/repositories/repositories_barrel.dart';

part 'my_lead_event.dart';
part 'my_lead_state.dart';

class MyLeadBloc extends Bloc<MyLeadEvent, MyLeadState> {
  MyLeadBloc() : super(MyLeadState()) {
    on<MyLeadsFetched>(_fetchedMyLeads);
  }

  final LeadRepository leadRepository = LeadRepository();

  Future<void> _fetchedMyLeads(
    MyLeadsFetched event,
    Emitter<MyLeadState> emit,
  ) async {
    final leads = await leadRepository.getLeads();
    emit(state.copyWith(leads: leads));
  }
}
