// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:google_fonts/google_fonts.dart';

import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 116, 99, 214),
              Color.fromRGBO(91, 77, 167, 1),
            ]),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                              height: 57,
                              width: 57,
                              child:
                                  Image.asset('assets/bucket_and_paint.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            'XTintas',
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, bottom: 50),
                      child: Text(
                        'Entrar na plataforma',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12, left: 35),
                        child: Text(
                          'E-mail',
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: emailTextFormField(_emailController)),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 12, left: 35, top: 20),
                        child: Text(
                          'Senha',
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: senhaTextFormField(_passwordController)),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                        height: 80,
                        width: 240,
                        child: IconButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/navigationBar');
                              }
                            },
                            icon: Image.asset('assets/large_width_button.png')),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/registration');
                        },
                        child: Text(
                          'Criar conta',
                          style: GoogleFonts.openSans(
                              fontSize: 16, color: Colors.white60),
                        )),
                  ]),
            ),
          ),
        ));
  }
}
