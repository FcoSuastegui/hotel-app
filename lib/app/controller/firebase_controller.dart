import 'dart:io';

import 'package:clubimperial/app/src/data/services/token_service.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/views/notifications/controller/notification_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:device_info/device_info.dart';

class FireBaseController {
  FireBaseController._internal();
  static FireBaseController _instance = FireBaseController._internal();
  static FireBaseController get inst => _instance;

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<void> init() async {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        NotificationController.instance.getNotification();
        print(" onMessage $message");
      },
      onBackgroundMessage:
          Platform.isAndroid ? FireBaseController.backGroundMessage : null,
      onLaunch: (Map<String, dynamic> message) async {
        NotificationController.instance.getNotification();
        print(" onLaunch $message");
      },
      onResume: (Map<String, dynamic> message) async {
        NotificationController.instance.getNotification();
        print(" onResume $message");
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
      IosNotificationSettings(
        sound: true,
        badge: true,
        alert: true,
        provisional: true,
      ),
    );
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    await sendToken();
  }

  Future<void> sendToken() async {
    final token = await _firebaseMessaging.getToken();
    String device = '';
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      device = androidInfo.model;
      print('Running on ${androidInfo.model}'); // e.g. "Moto G (4)"
    } else {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      device = iosInfo.utsname.machine;
      print('Running on ${iosInfo.utsname.machine}');
    }
    await TokenService().sendToken(device, token, GetStorages.inst.idusuario);
    print(token);
  }

  static Future<dynamic> backGroundMessage(Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }
  }

  void ios(Map datos) {
    print("ios: $datos");
  }

  void android(Map datos) {
    print("android: $datos");
  }
}
