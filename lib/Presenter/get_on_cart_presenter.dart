import 'package:app_xtintas/Model/Repositories/get_on_cart_repository.dart';
import 'package:app_xtintas/Model/add_to_cart.dart';
import 'package:flutter/cupertino.dart';

class GetOnCartPresenter with ChangeNotifier {
  final GetOnCartRepository getOnCartRepository;

  GetOnCartPresenter(this.getOnCartRepository);

 late List<AddToCart> showOnCart;

  void getOnCart() async {
    showOnCart = (await getOnCartRepository.getToCart()) as List<AddToCart>;
  }
}
