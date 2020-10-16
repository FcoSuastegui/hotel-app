import 'package:clubimperial/src/views/notifications/components/notification_card.dart';
import 'package:clubimperial/src/views/notifications/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationBody extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loading.value
      ? Center(child: CircularProgressIndicator(),)
      : ListView(
        children: List.generate(
          controller.notifications.length,
          (index) => NotificationCard(
            notificacion: controller.notifications[index],
            onTap: () {
              controller.selectNotification(controller.notifications[index]);
              Get.toNamed('/notification-content');
            },
          ),
        ),
      ),
    );
  }
}
