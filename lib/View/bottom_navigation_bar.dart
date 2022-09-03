
import 'package:app_xtintas/View/cart_page.dart';
import 'package:app_xtintas/View/profile_page.dart';
import 'package:app_xtintas/View/store_page.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentTabIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 244, 237, 255),
            Color.fromARGB(255, 220, 220, 220),
            Color.fromARGB(255, 244, 237, 255),
          ]),
      body: PageView(
        controller: pageController,
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Opções de tintas',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 26),
                )),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Carrinho',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 26),
                )),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Perfil',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 26),
                )),
              ],
            ),
          ),

          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store_outlined,
                size: 35,
              ),
              label: 'Loja'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),
              label: 'Carrinho'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 35,
              ),
              label: 'Perfil'),
        ],
        currentIndex: _currentTabIndex,
        selectedItemColor: Color.fromRGBO(91, 77, 167, 1),
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
