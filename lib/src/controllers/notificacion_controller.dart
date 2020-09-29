import 'package:clubimperial/src/models/notificacion_model.dart';
import 'package:get/get.dart';

class NotificacionController extends GetxController {
  List items = [
    {
      "icono": "cake",
      "titulo": "Felicidades!!",
      "descripcion": "Mundo Imperial te desea un feliz cumpleaños",
      "page" : "",
    },
    {
      "icono": "restaurant",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial tiene diferentes estancias para disfrutar la tarde.",
      "page" : "",
    },
    {
      "icono": "spa",
      "titulo": "Princess",
      "descripcion": "Mundo Imperial tiene descuento del 2x1 en el spa, para disfutrar con tu pareja",
      "page" : "",
    },
  ];

  List<NotificationModel> _notifications = new List();
  List<NotificationModel> get notifications => _notifications;

  NotificationModel _notification;
  NotificationModel get notification => _notification;

  @override
  void onInit() {
    for (var item in items) {
      notifications.add(NotificationModel.fromJson(item));
    }
    super.onInit();
  }

  void seleccionarNotificacion( NotificationModel notification) => _notification = notification;

}
