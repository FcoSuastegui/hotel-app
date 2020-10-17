import 'package:badges/badges.dart';
import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/pages/screens/home/home_screen.dart';
import 'package:clubimperial/app/src/views/coupon/coupon_view.dart';
import 'package:clubimperial/app/src/views/notifications/notification_view.dart';
import 'package:clubimperial/app/src/views/settings/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationHomeController extends GetxController {
  Widget pageOptions(int index) {
    List<Widget> _pageOptions = [
      HomeScreen(),
      CouponView(),
      NotificationView(),
      SettingView()
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
        label: "Inicio",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard, color: Colores.primary, size: 18),
        label:  "Cupones",
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
        label: "Notificaciones",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, color: Colores.primary, size: 18),
        label: "Configuración",
      ),
    ];
    super.onInit();
  }
}
