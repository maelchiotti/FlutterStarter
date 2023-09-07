import 'package:flutter/material.dart';
import 'package:starter/app.dart';
import 'package:starter/utils/package_info_manager.dart';
import 'package:starter/utils/preferences/preferences_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesManager().init();
  await PackageInfoManager().init();

  runApp(App());
}
