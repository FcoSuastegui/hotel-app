import 'package:clubimperial/app/controller/root_controller.dart';
import 'package:clubimperial/app/src/themes/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      init: RootController(),
      builder: (_) {
        return GetMaterialApp(
          title: "Club De Golf",
          debugShowCheckedModeBanner: false,
          initialRoute: _.initialRoute,
          defaultTransition: Transition.cupertino,
          getPages: _.getPages,
          theme: AppThemeData.themeData,
          locale: Locale('es'),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (deviceLocale, supporteLocate) =>
              supporteLocate.first,
          supportedLocales: [
            const Locale('es'), // Español
            const Locale('en'), // English
          ],
        );
      },
    );
  }
}
