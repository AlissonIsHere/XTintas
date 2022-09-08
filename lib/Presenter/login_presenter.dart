import 'package:app_xtintas/Model/Repositories/login_repository.dart';
import 'package:flutter/cupertino.dart';

class LoginPresenter extends ChangeNotifier {
  final LoginRepository loginRepository;

  LoginPresenter(this.loginRepository);

  var token;

  void getToken() async {
    token = await loginRepository.getLogin();
    notifyListeners();
  }
}
