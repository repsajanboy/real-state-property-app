class ListingsModel {
  List<ListingProperty>? properties;

  ListingsModel({this.properties});

  factory ListingsModel.fromJson(Map<String, dynamic> json) => ListingsModel(
        properties: json["properties"],
      );  
}

class ListingProperty {
  int? id;
  String? title;
  int? price;
  String? currency;
  Location? location;
  String? propertyType;
  int? bedrooms;
  int? bathrooms;
  int? squareFeet;
  List<String>? amenities;
  List<String>? images;
  String? description;

  ListingProperty({
    this.id,
    this.title,
    this.price,
    this.currency,
    this.location,
    this.propertyType,
    this.bedrooms,
    this.bathrooms,
    this.squareFeet,
    this.amenities,
    this.images,
    this.description,
  });

  factory ListingProperty.fromJson(Map<String, dynamic> json) => ListingProperty(
    id: json["id"] as int,
    title: json["title"] as String,
    price: json["price"] as int,
    currency: json["currency"] as String,
    location: Location.fromJson(json["location"]),
    propertyType: json["property_type"] as String,
    bedrooms: json["bedrooms"] as int,
    bathrooms: ["bathrooms"] as int,
    squareFeet: json["square_feet"] as int,
    amenities: List<String>.from(json["amenities"] ?? []),
    images: List<String>.from(json["images"] ?? []),
    description: json["description"] as String,

  );
}

class Location {
  String? address;
  String? city;
  String? state;
  String? zip;
  String? country;

  Location({
    this.address,
    this.city,
    this.state,
    this.zip,
    this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    address: json["address"] as String,
    city: json["city"] as String,
    state: json["state"] as String,
    zip: json["zip"] as String,
    country: json["country"] as String,
  );
}
