import 'dart:ui';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 244, 237, 255),
            Color.fromARGB(255, 220, 220, 220),
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, bottom: 30),
                    child: Text(
                      'Como pintar',
                      style: GoogleFonts.openSans(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('1',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Text(
                    'Prepare a tinta',
                    style: GoogleFonts.openSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/paint_bucket.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                  top: 10,
                ),
                child: Text(
                  'Abra a tinta e a coloque na caçamba',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('2',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Text(
                    'Primeira demão',
                    style: GoogleFonts.openSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/brush.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 72, right: 72, bottom: 50),
                child: Text(
                  'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              ),
              Transform.rotate(
                  angle: 89.5,
                  child: Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 60,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  )),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('3',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Text(
                    'Repasse a tinta',
                    style: GoogleFonts.openSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/brush.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 72, right: 72, bottom: 70),
                child: Text(
                  'Passe mais uma camada de tinta na parede para reduzir imperfeições',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              ),
              Image.asset('assets/time.png'),
              Text(
                'Aguarde 2 horas',
                style: GoogleFonts.openSans(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('4',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Text(
                    'Segunda demão',
                    style: GoogleFonts.openSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/brush.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 72, right: 72, bottom: 50),
                child: Text(
                  'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('5',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Text(
                    'Repasse a tinta',
                    style: GoogleFonts.openSans(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/brush.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 72, right: 72, bottom: 70),
                child: Text(
                  'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              ),
              Image.asset('assets/time.png'),
              Text(
                'Aguarde 2 horas',
                style: GoogleFonts.openSans(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('6',
                      style: GoogleFonts.openSans(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(91, 77, 167, 1))),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Acabou',
                      style: GoogleFonts.openSans(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset('assets/brush.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                child: Text(
                  'Sua parede está pronta',
                  style: GoogleFonts.openSans(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
