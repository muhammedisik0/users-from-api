class Company {
  late String name;
  late String catchPhrase;
  late String bs;

  Company.fromJson(Map json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }
}
