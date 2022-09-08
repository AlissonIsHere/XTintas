
import 'package:flutter/cupertino.dart';

import '../Model/Repositories/register_repository.dart';
import '../Model/user.dart';

class RegisterPresenter extends ChangeNotifier {
  late User user;
  late final RegisterRepository registerRepository;

  fetchData(String name, String email, String password) async {
    user = await registerRepository.postRegister(name, email, password);
    notifyListeners();
  }
}