import 'package:clubimperial/app/src/views/notifications/components/notification_body.dart';
import 'package:clubimperial/app/src/views/notifications/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("Notificaciones"),
      ),
      body: GetBuilder<NotificationController>(
        init: NotificationController.instance,
        builder: (_) => SafeArea(
          child: NotificationBody(),
        ),
      ),
    );
  }
}
