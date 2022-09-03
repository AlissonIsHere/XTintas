import 'package:app_xtintas/Model/Repositories/paint_options_repository.dart';
import 'package:app_xtintas/Model/paint_options.dart';
import 'package:flutter/cupertino.dart';

class StorePresenter with ChangeNotifier {
  final PaintOptionsRepository paintOptionsRepository;
  StorePresenter(this.paintOptionsRepository);
  List<PaintOptions> listPaintOptions = [];

  void getPaintOptions() async {
    listPaintOptions = await paintOptionsRepository.getPaintOptions();
    notifyListeners();
  }
}
