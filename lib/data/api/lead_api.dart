import 'dart:convert';

import 'package:flutter/services.dart';

class LeadApi {
  Future<dynamic> getLeads() async {
    final leads = await rootBundle.loadString('assets/json/leads.json');
    return json.decode(leads);
  }
}
