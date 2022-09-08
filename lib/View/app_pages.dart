import 'package:app_xtintas/Presenter/paint_options_presenter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter/material.dart';

class AppPages extends StatefulWidget with ChangeNotifier {
  AppPages({Key? key}) : super(key: key);

  @override
  State<AppPages> createState() => _AppPagesState();
}

class _AppPagesState extends State<AppPages> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WidgetModel>(
        create: (context) => WidgetModel(),
        child: Consumer<WidgetModel>(
            builder: (context, model, child) => ScaffoldGradientBackground(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 244, 237, 255),
                        Color.fromARGB(255, 220, 220, 220),
                        Color.fromARGB(255, 244, 237, 255),
                      ]),
                  body: model.currentScreen,
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
                      currentIndex: model.currentTabIndex,
                      selectedItemColor: const Color.fromRGBO(91, 77, 167, 1),
                      unselectedItemColor: Colors.grey,
                      onTap: (int idx) {
                        model.currentTabIndex = idx;
                      }),
                )));
  }
}

class WidgetModel with ChangeNotifier {
  int _currentTabIndex = 0;
  final List<Widget> _screens = [const Store(), const Cart(), const Profile()];
  get currentTabIndex => _currentTabIndex;
  get currentScreen => _screens[_currentTabIndex];

  set currentTabIndex(index) {
    _currentTabIndex = index;
    notifyListeners();
  }
}

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PaintOptionsPresenter>(
        builder: ((context, paint, child) => ListView.builder(
            scrollDirection: Axis.horizontal,
            prototypeItem: Center(
                child: Text(
              'Opções de tintas',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold, fontSize: 26),
            )),
            itemCount: paint.listPaintOptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    Image.network(paint.listPaintOptions[index].image ?? ''),
                title: 
                    Text(paint.listPaintOptions[index].name ?? ''),
                trailing: FloatingActionButton(onPressed: () {
                  Navigator.pushNamed(context, '/tutorial');
                },
                backgroundColor: const Color.fromRGBO(91, 77, 167, 1),
                child: Text('Como pintar', style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
                ),
              ));
            })));
  }
}

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
