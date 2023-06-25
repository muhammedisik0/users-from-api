import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  String usersEndpoint = '/users';

  Future<List?> fetchUsers() async {
    try {
      final url = Uri.parse(baseUrl + usersEndpoint);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List listOfUsers = data.map((e) => User.fromJson(e)).toList();
        return listOfUsers;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
