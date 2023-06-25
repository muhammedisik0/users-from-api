class Address {
  late String street;
  late String suite;
  late String city;
  late String zipcode;

  Address.fromJson(Map json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
  }

  String get fullAddress => '$street $suite $city $zipcode';
}
