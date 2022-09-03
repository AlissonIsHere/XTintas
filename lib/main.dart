import 'package:app_xtintas/View/Authentication/login_page.dart';
import 'package:app_xtintas/View/Authentication/registration_page.dart';
import 'package:app_xtintas/View/bottom_navigation_bar.dart';
import 'package:app_xtintas/View/cart_page.dart';
import 'package:app_xtintas/View/profile_page.dart';
import 'package:app_xtintas/View/store_page.dart';
import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        '/store': (context) => StorePage(),
        '/profile': (context) => ProfilePage(),
        '/cart': (context) => CartPage(),
        '/navigationBar': (context) => BottomNavigationBarPage()
      },
    );
  }
}
