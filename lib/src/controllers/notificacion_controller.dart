import 'package:clubimperial/src/models/notificacion_model.dart';
import 'package:get/get.dart';

class NotificacionController extends GetxController {
  List items = [
    {
      "icono": "cake",
      "titulo": "Felicidades",
      "descripcion": "Mundo Imperial te desea un feliz cumpleaños",
    },
    {
      "icono": "restaurant",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "spa",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "local_bar",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "cake",
      "titulo": "Felicidades",
      "descripcion": "Mundo Imperial te desea un feliz cumpleaños",
    },
    {
      "icono": "restaurant",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "spa",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "local_bar",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "cake",
      "titulo": "Felicidades",
      "descripcion": "Mundo Imperial te desea un feliz cumpleaños",
    },
    {
      "icono": "restaurant",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "spa",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
    },
    {
      "icono": "local_bar",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial",
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
