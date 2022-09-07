import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:app_xtintas/View/Authentication/registration_page.dart';

import '../user.dart';

class RegisterRepository {
  Future<User> postRegister(String name, String email, String password) async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/user');

    var response = await http
        .post(url, body: {'name': name, 'email': email, 'password': password});
    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falhou ao cadastrar');
    }
  }
}

class RegisterData extends ChangeNotifier {
  late User user;
  late final RegisterRepository registerRepository;

  fetchData(String name, String email, String password) async {
    user = await registerRepository.postRegister(name, email, password);
    notifyListeners();
  }
}
