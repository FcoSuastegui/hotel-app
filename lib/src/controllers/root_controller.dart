import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/routes/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RootController extends GetxController {
  String _title = 'Club De Golf';
  String get title => _title;

  Transition _defaultTransition = Transition.cupertino;
  Transition get defaultTransition => _defaultTransition;

  bool _debugShowCheckedModeBanner = false;
  bool get debugShowCheckedModeBanner => _debugShowCheckedModeBanner;

  String _initialRoute = GetStorages.inst.page;
  String get initialRoute => _initialRoute;

  List<GetPage> _getPages = Routes.inst.routes;
  List<GetPage> get getPages => _getPages;

  ThemeData _theme = ThemeData(
    textTheme: GoogleFonts.quicksandTextTheme(),
    canvasColor: Colors.white,
    primaryColor: Colores.primary,
    backgroundColor: Colores.secondary,
  );

  ThemeData get theme => _theme;

  Locale _locale = Locale('es');
  Locale get locale => _locale;

  Iterable<LocalizationsDelegate<dynamic>> _localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates =>
      _localizationsDelegates;

  Iterable<Locale> _supportedLocales = [
    const Locale('es'), // Español
    const Locale('en'), // English
  ];

  Iterable<Locale> get supportedLocales => _supportedLocales;
}
