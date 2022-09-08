import 'dart:convert';
import 'dart:io';

import 'package:app_xtintas/Model/login.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future<Login> fetchLogin() async {
    final response = await http.get(
   Uri.parse('https://62968cc557b625860610144c.mockapi.io/login'),
    headers:
    {
      HttpHeaders.authorizationHeader: '226875f91cf43e2b0c314ef9c2a9521d5808960cc5a759c16d66e92803771178'
    }

    );
    final responseJson = jsonDecode(response.body);
    
    return Login.fromJson(responseJson);
  }
}
