import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/app.dart';
import 'package:starter/utils/info_utils.dart';
import 'package:starter/utils/preferences/preferences_utils.dart';
import 'package:starter/utils/theme_utils.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await PreferencesUtils().init();
  await InfoUtils().init();
  await ThemeUtils().init();

  FlutterNativeSplash.remove();

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
