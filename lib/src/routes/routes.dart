import 'package:clubimperial/src/helpers/helper.dart';
import 'package:clubimperial/src/pages/home_page.dart';
import 'package:clubimperial/src/pages/login_page.dart';
import 'package:clubimperial/src/pages/screens/configuracion/contrasena/contrasena_screen.dart';
import 'package:clubimperial/src/pages/screens/configuracion/perfil/perfil_screen.dart';
import 'package:clubimperial/src/pages/screens/services/actividad/actividad_screen.dart';
import 'package:clubimperial/src/pages/screens/services/hotel/hotel_screen.dart';
import 'package:clubimperial/src/pages/screens/services/restaurante/restaurante_screen.dart';
import 'package:get/get.dart';

class Routes {
  Routes._internal();
  static Routes _instance = Routes._internal();
  static Routes get inst => _instance;

  final routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => LoginPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      transition: Transition.cupertino,
    ),
  ];

  getRoute(String route) {
    Map<String, dynamic> page = {
      'perfil' : PerfilScreen(),
      'contrasena' : ContrasenaScren(),
      'hotel' : HotelScreen(),
      'restaurante' : RestauranteScreen(),
      'actividad' : ActividadScreen(),
    };

    page[route] == null
      ? Helper.error(message: "El módulo no esta disponible o no tienes acceso a ello.")
      : Get.to(page[route]);

  }

  getView(String route) {
    Map<String, dynamic> page = {
      'perfil' : PerfilScreen(),
      'contrasena' : ContrasenaScren(),
    };

    page[route] == null
      ? Helper.error(message: "El módulo no esta disponible o no tienes acceso a ello.")
      : Get.to(page[route]);

  }
}
