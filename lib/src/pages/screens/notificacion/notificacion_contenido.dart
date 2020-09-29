import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/iconos.dart';
import 'package:clubimperial/src/models/notificacion_model.dart';
import 'package:clubimperial/src/controllers/notificacion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificacionContenido extends StatelessWidget {
  final NotificationModel notificacion =
      Get.find<NotificacionController>().notification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("${notificacion.titulo}"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Iconos.icono(
                        icono: notificacion.icono,
                        size: 100.0,
                        color: Colores.secondary,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Hola ${GetStorages.inst.nombre}",
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(bottom: 50.0),
                child: Text(
                  "${notificacion.descripcion}",
                  textAlign: TextAlign.center,
                ),
              ),
              notificacion.page.isNotEmpty
                  ? RaisedButton(
                      onPressed: () => print(notificacion.page),
                      child: Container(
                        child: Text('Ir a la página'),
                        padding: EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 15.0),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 0.0,
                      color: Colores.primary,
                      textColor: Colors.white,
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
