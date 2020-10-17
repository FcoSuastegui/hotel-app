import 'dart:convert';

CouponsModel couponsModelFromJson(String str) => CouponsModel.fromJson(json.decode(str));

String couponsModelToJson(CouponsModel data) => json.encode(data.toJson());

class CouponsModel {
  int id;
  String nombre;
  String establecimiento;
  String icono;
  String imagen;
  dynamic descripcion;
  String qr;
  String status;

  CouponsModel({
      this.id,
      this.nombre,
      this.establecimiento,
      this.icono,
      this.imagen,
      this.descripcion,
      this.qr,
      this.status,
  });

  factory CouponsModel.fromJson(Map<String, dynamic> json) => CouponsModel(
      id              : json["id"],
      nombre          : json["nombre"],
      establecimiento : json["establecimiento"],
      icono           : json["icono"],
      imagen          : json["imagen"],
      descripcion     : json["descripcion"],
      qr              : json["qr"],
      status          : json["status"],
  );

  Map<String, dynamic> toJson() => {
      "id"                : id,
      "nombre"            : nombre,
      "establecimiento"   : establecimiento,
      "icono"             : icono,
      "imagen"            : imagen,
      "descripcion"       : descripcion,
      "qr"                : qr,
      "status"            : status,
  };
}
