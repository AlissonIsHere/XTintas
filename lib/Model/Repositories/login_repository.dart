import 'dart:convert';

import 'package:app_xtintas/Model/login.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future<List<Login>> getLogin() async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/paints');
    List<Login> listLogin = [];

    final response = await http.get(url);

    if (response.statusCode == 200) {
      Map json = const JsonDecoder().convert(response.body);
      
    for (var element in (json['access-token'] as List)) {
        listLogin.add(Login.fromJson(element));
      }
      return listLogin;
    }
    return listLogin;
  }
}
