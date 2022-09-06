import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:app_xtintas/View/Authentication/registration_page.dart';

class RegisterRepository {
  Future<http.Response> postRegister() {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/user');
    return http.post(url, body: {'name'});//adicionar o name, email e senha
  }
}
