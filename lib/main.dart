
import 'package:app_xtintas/Model/Repositories/login_repository.dart';
import 'package:app_xtintas/Model/Repositories/paint_options_repository.dart';
import 'package:app_xtintas/Model/Repositories/register_repository.dart';
import 'package:app_xtintas/Model/paint_options.dart';
import 'package:app_xtintas/Model/user.dart';
import 'package:app_xtintas/Presenter/login_presenter.dart';
import 'package:app_xtintas/Presenter/register_presenter.dart';
import 'package:app_xtintas/Presenter/store_presenter.dart';
import 'package:app_xtintas/View/Authentication/login_page.dart';
import 'package:app_xtintas/View/Authentication/registration_page.dart';
import 'package:app_xtintas/View/app_pages.dart';
import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => StorePresenter(PaintOptionsRepository()),
      ),
      ChangeNotifierProvider(
        create: (context) => LoginPresenter(LoginRepository()),
      ),
      ChangeNotifierProvider<RegisterPresenter>(create: ((context) => RegisterPresenter())
  )],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/registration': (context) => RegistrationPage(),
        '/tutorial': (context) => TutorialPage(),
        '/appPages': (context) => AppPages()
      },
    );
  }
}
