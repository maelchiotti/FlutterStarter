import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/package_info_manager.dart';
import 'package:starter/utils/routes/router.dart';
import 'package:starter/utils/theme_manager.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return ValueListenableBuilder(
          valueListenable: localeNotifier,
          builder: (context, locale, child) {
            return ValueListenableBuilder(
              valueListenable: themeModeNotifier,
              builder: (context, themeMode, child) {
                return MaterialApp.router(
                  title: PackageInfoManager().name,
                  theme: ThemeManager().getLightTheme(lightDynamic),
                  darkTheme: ThemeManager().getDarkTheme(darkDynamic),
                  themeMode: themeMode,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: locale,
                  routerConfig: router,
                );
              },
            );
          },
        );
      },
    );
  }
}
