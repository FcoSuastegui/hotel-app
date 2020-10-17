import 'package:clubimperial/app/app.dart';
import 'package:flutter/material.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorages.inst.init();
  runApp(App());
}
