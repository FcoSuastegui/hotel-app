import 'package:clubimperial/src/helpers/helper.dart';
import 'package:clubimperial/src/pages/home_page.dart';
import 'package:clubimperial/src/pages/screens/configuracion/perfil/perfil_screen.dart';
import 'package:clubimperial/src/pages/screens/services/actividad/actividad_screen.dart';
import 'package:clubimperial/src/pages/screens/services/hotel/hotel_screen.dart';
import 'package:clubimperial/src/pages/screens/services/restaurante/restaurante_screen.dart';
import 'package:clubimperial/src/views/login/login_view.dart';
import 'package:clubimperial/src/views/password/password_view.dart';
import 'package:get/get.dart';

class Routes {
  Routes._internal();
  static Routes _instance = Routes._internal();
  static Routes get inst => _instance;

  final routes = [
    GetPage(
      name: LoginView.routeName,
      page: () => LoginView(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: PassWordView.routeName,
      page: () => PassWordView(),
    ),
  ];

  getRoute(String route) {
    Map<String, dynamic> page = {
      'perfil' : PerfilScreen(),
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
    };

    page[route] == null
      ? Helper.error(message: "El módulo no esta disponible o no tienes acceso a ello.")
      : Get.to(page[route]);

  }
}
