

import 'package:app_xtintas/Model/Repositories/paint_options_repository.dart';
import 'package:app_xtintas/Presenter/store_presenter.dart';
import 'package:app_xtintas/View/Authentication/login_page.dart';
import 'package:app_xtintas/View/Authentication/registration_page.dart';
import 'package:app_xtintas/View/bottom_navigation_bar.dart';
import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => StorePresenter(PaintOptionsRepository()),
      ),
    ],
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
      initialRoute: '/navigationBar',
      routes: {
        '/': (context) => const LoginPage(),
        '/registration': (context) => const RegistrationPage(),
        '/tutorial': (context) => TutorialPage(),
        '/navigationBar': (context) => BottomNavigationBarPage()
      },
    );
  }
}
