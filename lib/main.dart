import 'package:app_xtintas/View/Authentication/login_page.dart';
import 'package:app_xtintas/View/Authentication/registration_page.dart';
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
      initialRoute: '/tutorial',
      routes: {
        '/': (context) => const LoginPage(),
        '/registration':(context) => const RegistrationPage(),
        '/tutorial':(context) => TutorialPage(),
      
      },
    );
  }
}
