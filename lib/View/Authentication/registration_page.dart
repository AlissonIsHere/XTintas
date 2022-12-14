import 'package:app_xtintas/Model/Repositories/register_repository.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:app_xtintas/Presenter/register_presenter.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<RegisterPresenter>(context);

    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                          height: 57,
                          width: 57,
                          child: Image.asset('assets/bucket_and_paint.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 34),
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
                Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 20),
                  child: Text(
                    'Criar conta',
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
                      'Nome',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        filled: true,
                        fillColor: Colors.white38,
                        hintText: 'nome',
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 16, color: Colors.white)),
                    validator: (name) {
                      if (name == null || name.isEmpty) {
                        return 'Informe seu nome para continuar';
                      }
                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12, left: 35, top: 10),
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
                    padding:
                        const EdgeInsets.only(bottom: 12, left: 35, top: 10),
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
                  child: senhaTextFormField(_passwordController),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 12, left: 35, top: 20),
                    child: Text(
                      'Confirmar senha',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: senhaTextFormField(_confirmPasswordController),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 80,
                    width: 240,
                    child: IconButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            data.fetchData(
                                _nameController.text,
                                _emailController.text,
                                _passwordController.text);
                            Navigator.of(context).pushNamed('/');
                          }
                        },
                        icon: Image.asset('assets/registration_button.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

senhaTextFormField(TextEditingController controller) {
  return TextFormField(
    obscureText: true,
    obscuringCharacter: '*',
    decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        filled: true,
        fillColor: Colors.white38,
        hintText: '********',
        hintStyle: GoogleFonts.openSans(fontSize: 16, color: Colors.white),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.eyeSlash,
              color: Colors.white70,
            ))),
    validator: (password) {
      if (password == null || password.isEmpty) {
        return 'Informe sua senha para continuar';
      }
      return null;
    },
  );
}

emailTextFormField(TextEditingController controller) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        filled: true,
        fillColor: Colors.white38,
        hintText: 'fernandadasilva@onu.com.br',
        hintStyle: GoogleFonts.openSans(fontSize: 16, color: Colors.white)),
    validator: (email) {
      if (email == null || email.isEmpty) {
        return 'Informe seu email para continuar';
      }
      return null;
    },
  );
}
