import 'package:flutter/material.dart';
import 'package:starter/app.dart';
import 'package:starter/utils/package_info_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PackageInfoManager().init();

  runApp(const App());
}
