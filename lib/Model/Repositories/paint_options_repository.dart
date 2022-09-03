import 'dart:convert';

import 'package:app_xtintas/Model/paint_options.dart';
import 'package:dio/dio.dart';

class PaintOptionsRepository {
  Future<List<PaintOptions>> getPaintOptions() async {
    List<PaintOptions> listPaintOptions = [];

    var dio = Dio();
    final response =
        await dio.get('https://62968cc557b625860610144c.mockapi.io/paints');

    if (response.statusCode == 200) {
      Map json = const JsonDecoder().convert(response.data);
      for (var element in (json['data'] as List)) {
        listPaintOptions.add(PaintOptions.fromJson(element));
      }
      return listPaintOptions;
    }
    return listPaintOptions;
  }
}
