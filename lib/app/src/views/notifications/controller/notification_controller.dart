import 'package:clubimperial/app/src/data/models/notification_model.dart';
import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/data/services/notification_service.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {

  NotificationController._internal();
  static NotificationController _instance = NotificationController._internal();
  static NotificationController get instance => _instance;

  RxList<NotificationModel> _notifications = List<NotificationModel>().obs;
  RxList<NotificationModel> get notifications => _notifications;

  RxInt _counter = 0.obs;
  RxInt get counter => _counter;

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
    print("object");
    _loading(true);
    final ResponseModel response = await NotificationService().getData({
      'idusuario': GetStorages.inst.idusuario,
    });
    _notifications.value = [];

    if (response.status) {
      response.data.forEach((item) {
        _notifications.add(NotificationModel.fromJson(item));
      });
      _counter(_notifications.length);
    }
    _loading(false);

    print(_counter.value);
  }

  void selectNotification(NotificationModel notification) =>
      _notification = notification;
}
