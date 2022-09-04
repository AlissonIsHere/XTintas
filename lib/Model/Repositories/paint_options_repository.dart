import 'dart:convert';

import 'package:app_xtintas/Model/paint_options.dart';
import 'package:http/http.dart' as http;

class PaintOptionsRepository {
  Future<List<PaintOptions>> getPaintOptions() async {
    Uri url = Uri.parse('https://62968cc557b625860610144c.mockapi.io/paints');
    List<PaintOptions> listPaintOptions = [];

    final response = await http.get(url);

    if (response.statusCode == 200) {
      Map json = const JsonDecoder().convert(response.body);
      for (var element in (json['data'] as List)) {
        listPaintOptions.add(PaintOptions.fromJson(element));
      }
      return listPaintOptions;
    }
    return listPaintOptions;
  }
}
