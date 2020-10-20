import 'package:clubimperial/app/src/views/password/components/password_form.dart';
import 'package:flutter/material.dart';

class PassWordBody extends StatelessWidget {
  const PassWordBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PassWordForm(),
    );
  }
}
