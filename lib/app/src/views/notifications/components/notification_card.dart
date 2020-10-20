import 'package:clubimperial/app/src/data/models/notification_model.dart';
import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/helpers/iconos.dart';
import 'package:clubimperial/app/src/helpers/linnerContainer.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificacion;
  final Function onTap;
  final Function(DismissDirection) onDismissed;

  const NotificationCard({
    Key key,
    this.notificacion,
    this.onTap,
    this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: onDismissed,
      child: LinnerContainer(
        left: 10.0,
        right: 10.0,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 10.0),
          child: ListTile(
            selected: false,
            leading: Iconos.icono(
              icono: notificacion.icon,
              color: Colores.primary,
            ),
            title: Text("${notificacion.title}"),
            subtitle: Text("${notificacion.description}"),
            onTap: onTap,
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
