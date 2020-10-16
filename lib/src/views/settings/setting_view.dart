import 'package:clubimperial/src/views/settings/components/setting_body.dart';
import 'package:clubimperial/src/views/settings/components/setting_header.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SettingHeader(),
                SettingBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
