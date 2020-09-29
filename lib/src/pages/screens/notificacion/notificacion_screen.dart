import 'package:clubimperial/src/Helpers/linnerContainer.dart';
import 'package:clubimperial/src/controllers/notificacion_controller.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/iconos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificacionScreen extends StatelessWidget {
  const NotificacionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificacionController>(
      init: NotificacionController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text("Notificaciones"),
        ),
        body: SafeArea(
          child: ListView(
            children: List.generate(
              _.notifications.length,
              (index) {
                final notificacion = _.notifications[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 10.0),
                      child: Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) => {},
                        child: ListTile(
                          selected: false,
                          leading: Iconos.icono(
                            icono: notificacion.icono,
                            color: Colores.primary,
                          ),
                          title: Text("${notificacion.titulo}"),
                          subtitle: Text("${notificacion.descripcion}"),
                          onTap: () {},
                          /* trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                          ), */
                        ),
                      ),
                    ),
                    LinnerContainer(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
