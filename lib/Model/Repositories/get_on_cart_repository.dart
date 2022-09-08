import 'dart:convert';

import 'package:app_xtintas/Model/add_to_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class GetOnCartRepository with ChangeNotifier {
  Future<AddToCart> getToCart() async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/cart');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return AddToCart.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falhou ao carregar o carrinho');
    }
  }
}
