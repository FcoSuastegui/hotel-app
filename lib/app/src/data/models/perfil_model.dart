import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    String usuario;
    String nombre;
    String correo;
    String telefono;
    String fechaNacimiento;
    String direccion;

    ProfileModel({
        this.usuario,
        this.nombre,
        this.correo,
        this.telefono,
        this.fechaNacimiento,
        this.direccion,
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        usuario         : json["usuario"],
        nombre          : json["nombre"],
        correo          : json["correo"],
        telefono        : json["telefono"],
        fechaNacimiento : json["fechaNacimiento"],
        direccion       : json["direccion"],
    );

    Map<String, dynamic> toJson() => {
        "usuario"         : usuario,
        "nombre"          : nombre,
        "correo"          : correo,
        "telefono"        : telefono,
        "fechaNacimiento" : fechaNacimiento,
        "direccion"       : direccion,
    };
}
