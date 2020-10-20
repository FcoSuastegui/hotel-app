import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/helpers/iconos.dart';
import 'package:clubimperial/app/src/views/notifications/controller/notification_controller.dart';
import 'package:clubimperial/app/src/widgets/AppBar/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationContentView extends GetView<NotificationController> {
  static final String routeName = '/notification-content';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        appBarTitle: "${controller.notification.title}",
        leadingIcon: Icons.clear,
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
                        icono: controller.notification.icon,
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
                  "${controller.notification.description}",
                  textAlign: TextAlign.center,
                ),
              ),
              controller.notification.page.isNotEmpty
                  ? RaisedButton(
                      onPressed: () => print(controller.notification.page),
                      child: Container(
                        child: Text('Ir a la página'),
                        padding: EdgeInsets.symmetric(
                          horizontal: 80.0,
                          vertical: 15.0,
                        ),
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
