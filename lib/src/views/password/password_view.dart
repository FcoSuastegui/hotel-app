import 'package:clubimperial/src/views/password/components/password_body.dart';
import 'package:clubimperial/src/widgets/AppBar/app_bar_custom.dart';
import 'package:flutter/material.dart';

class PassWordView extends StatelessWidget {
  static final String routeName = '/password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        appBarTitle: 'Cambiar contraseña',
        leadingIcon: Icons.arrow_back,
      ),
      body: PassWordBody(),
    );
  }
}
