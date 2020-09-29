import 'package:clubimperial/src/models/notificacion_model.dart';
import 'package:get/get.dart';

class NotificacionController extends GetxController {
  List items = [
    {
      "icono": "cake",
      "titulo": "Felicidades!!",
      "descripcion": "Mundo Imperial te desea un feliz cumpleaños",
    },
    {
      "icono": "restaurant",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial diferentes estancias para disfrutar la tarde.",
    },
    {
      "icono": "spa",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial, descuento del 2x1 en el spa, para disfutrar con tu pareja",
    },
  ];

  List<NotificationModel> _notifications = new List();
  List<NotificationModel> get notifications => _notifications;

  @override
  void onInit() {
    for (var item in items) {
      notifications.add(NotificationModel.fromJson(item));
    }
    super.onInit();
  }
}
