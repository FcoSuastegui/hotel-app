import 'package:clubimperial/app/src/data/services/version_service.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/routes/routes.dart';
import 'package:clubimperial/app/src/widgets/Alerts/alert_ask_again_dialog.dart';
import 'package:get/get.dart';

import 'package:package_info/package_info.dart';
import 'package:pub_semver/pub_semver.dart';

class RootController extends GetxController {
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
        AlertAskAgainDialog(
          title: "Actualización de la aplicación disponible",
          subTitle: "Actualiza la aplicación para continuar.",
          positiveButtonText: "Actualizar ahora",
          onPositiveButtonClicked: (){
            
          } ,
        ),
        barrierDismissible: false,
      );
    }
  }

  @override
  void onInit() {
    checkLatestVersion();
    super.onInit();
  }
}
