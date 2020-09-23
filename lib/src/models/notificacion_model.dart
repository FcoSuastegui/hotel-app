import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));
String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  String icono;
  String titulo;
  String descripcion;
  String page;

  NotificationModel({
      this.icono,
      this.titulo,
      this.descripcion,
      this.page,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
      icono         : json["icono"],
      titulo        : json["titulo"],
      descripcion   : json["descripcion"],
      page          : json["page"],
  );

  Map<String, dynamic> toJson() => {
      "icono"       : icono,
      "titulo"      : titulo,
      "descripcion" : descripcion,
      "page"        : page,
  };
}
