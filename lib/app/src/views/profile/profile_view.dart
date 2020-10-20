import 'package:clubimperial/app/src/views/profile/components/profile_body.dart';
import 'package:clubimperial/app/src/widgets/AppBar/app_bar_custom.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static final String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustom(
        appBarTitle: 'Mi perfil',
        leadingIcon: Icons.clear,
      ),
      body: ProfileBody(),
    );
  }
}
