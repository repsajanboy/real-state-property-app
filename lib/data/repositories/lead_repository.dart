import 'package:real_state_property/data/api/lead_api.dart';
import 'package:real_state_property/data/model/leads/leads_model.dart';

class LeadRepository {

  final LeadApi leadApi = LeadApi();

  Future<LeadsModel> getLeads() async {
    final result = await leadApi.getLeads();
    return LeadsModel.fromJson(result);
  }
}