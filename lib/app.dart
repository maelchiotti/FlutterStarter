import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:starter/routes/router.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/package_info_manager.dart';
import 'package:starter/utils/themes/themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return ValueListenableBuilder(
          valueListenable: themeModeNotifier,
          builder: (context, themeMode, child) {
            return MaterialApp.router(
              title: PackageInfoManager().name,
              theme: Themes().getLightTheme(lightDynamic),
              darkTheme: Themes().getDarkTheme(darkDynamic),
              themeMode: themeMode,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'),
              ],
              routerConfig: router,
            );
          },
        );
      },
    );
  }
}
