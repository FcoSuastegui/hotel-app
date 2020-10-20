import 'package:clubimperial/app/controller/firebase_controller.dart';
import 'package:clubimperial/app/src/data/services/version_service.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/routes/routes.dart';
import 'package:clubimperial/app/src/widgets/Alerts/alert_ask_again_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:package_info/package_info.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:store_redirect/store_redirect.dart';

class AppController extends GetxController {
  String _initialRoute = GetStorages.inst.page;
  String get initialRoute => _initialRoute;
  List<GetPage> _getPages = Routes.inst.routes;
  List<GetPage> get getPages => _getPages;

  Future<void> checkLatestVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    Version currentVersion = Version.parse(packageInfo.version);

    final response = await VersionService().checkVersion();
    Version latestAppVersion = Version.parse(response.data);

    if (currentVersion < latestAppVersion) {
      await Get.dialog(
        WillPopScope(
          onWillPop: () => Future.value(false),
          child: AlertAskAgainDialog(
            title: "Nueva Actualización Disponible",
            subTitle: "Para continuar actualiza la app.",
            positiveButtonText: "Actualizar ahora",
            onPositiveButtonClicked: () => goToStore(),
          ),
        ),
        barrierDismissible: false,
      );
    }
  }

  Future<void> goToStore() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    StoreRedirect.redirect(
      androidAppId: packageInfo.packageName,
      iOSAppId: "1533353442",
    );
  }

  @override
  void onInit() async {
    checkLatestVersion();
    if (_initialRoute != '/') await FireBaseController.inst.init();
    super.onInit();
  }
}
