import 'package:clubimperial/app/src/data/models/notification_model.dart';
import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/data/services/notification_service.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxList<NotificationModel> _notifications = List<NotificationModel>().obs;
  RxList<NotificationModel> get notifications => _notifications;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  NotificationModel _notification;
  NotificationModel get notification => _notification;

  @override
  void onInit() async {
    await getNotification();
    super.onInit();
  }

  Future<void> getNotification() async {
    _loading(true);
    final ResponseModel response = await NotificationService().getData({
      'sistema': 1,
      'usuario': 1,
    });
    _notifications.value = [];

    if (response.status) {
      response.data.forEach((item) {
        _notifications.add(NotificationModel.fromJson(item));
      });
    }
    _loading(false);
  }

  void selectNotification(NotificationModel notification) =>
      _notification = notification;
}
