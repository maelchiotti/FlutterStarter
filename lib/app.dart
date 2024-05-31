import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:starter/common/routing/router.dart';
import 'package:starter/l10n/app_localizations.g.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/theme_utils.dart';

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
                  title: 'Starter',
                  theme: ThemeUtils().getLightTheme(lightDynamic),
                  darkTheme: ThemeUtils().getDarkTheme(darkDynamic),
                  themeMode: themeMode,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: locale,
                  routerConfig: router,
                  debugShowCheckedModeBanner: false,
                );
              },
            );
          },
        );
      },
    );
  }
}
