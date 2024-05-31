import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:starter/common/routing/router.dart';
import 'package:starter/l10n/app_localizations.g.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/locale_utils.dart';
import 'package:starter/utils/theme_utils.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamicColorScheme, darkDynamicColorScheme) {
        return ValueListenableBuilder(
          valueListenable: dynamicThemingNotifier,
          builder: (_, __, ___) {
            return ValueListenableBuilder(
              valueListenable: blackThemingNotifier,
              builder: (_, __, ___) {
                return ValueListenableBuilder(
                  valueListenable: themeModeNotifier,
                  builder: (_, themeMode, ___) {
                    return MaterialApp.router(
                      title: 'Starter',
                      theme: ThemeUtils().getLightTheme(lightDynamicColorScheme),
                      darkTheme: ThemeUtils().getDarkTheme(darkDynamicColorScheme),
                      themeMode: themeMode,
                      localizationsDelegates: AppLocalizations.localizationsDelegates,
                      supportedLocales: AppLocalizations.supportedLocales,
                      locale: LocaleUtils().locale,
                      routerConfig: router,
                      debugShowCheckedModeBanner: false,
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
