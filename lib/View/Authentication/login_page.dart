import 'dart:html';

import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(97, 67, 177, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 57,
                    width: 57,
                    child: Image.asset('assets/bucket_and_paint.png')),
                const Text(
                  'XTintas',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const Text('Entrar na plataforma'),
            const Text('E-mail'),
            const TextField(
              decoration:
                  InputDecoration(hintText: 'fernandadasilva@onu.com.br'),
            ),
            const Text('Senha'),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: '********',
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.eyeSlash))),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/registration');
                },
                child: const Text('Criar conta'))
          ],
        ),
      ),
    );
  }
}
