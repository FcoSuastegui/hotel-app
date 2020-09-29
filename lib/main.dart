import 'package:clubimperial/src/controllers/root_controller.dart';
import 'package:flutter/material.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorages.inst.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      init: RootController(),
      builder: (_) => GetMaterialApp(
        title: _.title,
        debugShowCheckedModeBanner: _.debugShowCheckedModeBanner,
        initialRoute: _.initialRoute,
        getPages: _.getPages,
        theme: _.theme,
        locale: _.locale,
        localizationsDelegates: _.localizationsDelegates,
        localeResolutionCallback: (deviceLocale, supporteLocate) =>
            supporteLocate.first,
        supportedLocales: _.supportedLocales,
      ),
    );
  }
}
