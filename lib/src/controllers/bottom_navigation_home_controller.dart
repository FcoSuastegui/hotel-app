import 'package:badges/badges.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/pages/screens/configuracion/configuracion_screen.dart';
import 'package:clubimperial/src/pages/screens/cupon/cupon_screen.dart';
import 'package:clubimperial/src/pages/screens/home/home_screen.dart';
import 'package:clubimperial/src/pages/screens/notificacion/notificacion_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationHomeController extends GetxController {
  Widget pageOptions(int index) {
    List<Widget> _pageOptions = [
      HomeScreen(),
      CuponScreen(),
      NotificacionScreen(),
      ConfiguracionScreen()
    ];

    int indexAux = index + 1;
    return _pageOptions.length >= indexAux ? _pageOptions[index] : HomeScreen();
  }

  List<BottomNavigationBarItem> _items = [];
  List<BottomNavigationBarItem> get items => _items;

  RxInt _currentIndex = 0.obs;
  RxInt get currentIndex => _currentIndex;

  void selectCurrentIndex(int index) => _currentIndex.value = index;

  @override
  void onInit() {
    _items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colores.primary, size: 18),
        title: Text(
          "Inicio",
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 15,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard, color: Colores.primary, size: 18),
        title: Text(
          "Cupones",
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 15,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Badge(
          badgeContent: Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(
            Icons.notifications,
            color: Colores.primary,
            size: 18,
          ),
        ),
        title: Text(
          "Notificaciones",
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 15,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, color: Colores.primary, size: 18),
        title: Text(
          "Configuración",
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 15,
          ),
        ),
      ),
    ];
    super.onInit();
  }
}
