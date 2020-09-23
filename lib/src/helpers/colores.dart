import 'package:flutter/material.dart';

class Colores {
  static final Colores _instancia = new Colores._internal();
  factory Colores() => _instancia;
  Colores._internal();

  static const Color primary = Color(0xFF5AC3D1);
  static const Color secondary = Color(0xFF54D3C2);
  static const Color error = Color(0xFFF14141);
  static const Color back = Color(0xFFF6F6F6);
  static const Color fb = Color(0xFF3B5999);
  static const Color subWhite = Color(0xFFf4f4f4);
  static const Color golden = Color(0xFFCFB53B);
  static const Color chatBlack = Color(0xFFEAE7E2);
  static const Color myChat = Color(0xFF01AFF4);
  static const Color personChat = Color(0xFFE9EBED);
  static const Color chatPageBack = Color(0xFFFFFFFF);

  static Color borderColor = Colors.teal[200];
  static Color buttonColor = Colors.teal[200];
  static List<Color> appBarColor = [
    Colors.teal[900],
    Colors.teal[800],
    Colors.teal[400]
  ];
}
