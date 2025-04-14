class LeadsModel {
  List<Lead>? leads;
  LeadsModel({this.leads});

  factory LeadsModel.fromJson(Map<String, dynamic> json) => LeadsModel(
        leads: List<Lead>.from(json["leads"].map((x) => Lead.fromJson(x))),
      );
}

class Lead {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? propertyType;
  int? budget;
  String? location;
  String? preferredContactMethod;
  String? status;
  String? moveInDate;
  String? financingStatus;
  String? agentAssigned;
  String? typeOfLead;

  Lead({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.propertyType,
    this.budget,
    this.location,
    this.preferredContactMethod,
    this.status,
    this.moveInDate,
    this.financingStatus,
    this.agentAssigned,
    this.typeOfLead,
  });

  factory Lead.fromJson(Map<String, dynamic> json) => Lead(
        id: json["id"] as int,
        name: json["name"] as String,
        email: json["email"] as String,
        phone: json["phone"] as String,
        propertyType: json["property_type"] as String,
        budget: json["budget"] as int,
        location: json["location"] as String,
        preferredContactMethod: json["preferred_contact_method"] as String,
        status: json["status"] as String,
        moveInDate: json["move_in_date"] as String,
        financingStatus: json["financing_status"] as String,
        agentAssigned: json["agent_assigned"] as String,
        typeOfLead: json["type_of_lead"] as String,
      );
}
