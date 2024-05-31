import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/preferences/preference_key.dart';
import 'package:starter/utils/preferences/preferences_utils.dart';

class ThemeUtils {
  final _defaultLight = ColorScheme.fromSeed(
    seedColor: Colors.teal,
  );

  final _defaultDark = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.teal,
  );

  bool get isLight {
    return Theme.of(navigatorKey.currentContext!).brightness == Brightness.light;
  }

  ThemeMode get themeMode {
    final themeModePreference = PreferencesUtils().get<int>(PreferenceKey.theme);

    if (themeModePreference != null) {
      switch (themeModePreference) {
        case 0:
          return ThemeMode.system;
        case 1:
          return ThemeMode.light;
        case 2:
          return ThemeMode.dark;
      }
    }

    return ThemeMode.system;
  }

  String get themeModeName {
    final themeModePreference = PreferencesUtils().get<int>(PreferenceKey.theme);

    if (themeModePreference != null) {
      switch (themeModePreference) {
        case 0:
          return localizations.settings_theme_system;
        case 1:
          return localizations.settings_theme_light;
        case 2:
          return localizations.settings_theme_dark;
      }
    }

    return localizations.settings_theme_system;
  }

  void setThemeMode(ThemeMode? themeMode) {
    if (themeMode == null) {
      return;
    }

    int value;
    switch (themeMode) {
      case ThemeMode.system:
        value = 0;
      case ThemeMode.light:
        value = 1;
      case ThemeMode.dark:
        value = 2;
    }
    PreferencesUtils().set<int>(PreferenceKey.theme.key, value);

    themeModeNotifier.value = themeMode;
  }

  ThemeData getLightTheme([ColorScheme? lightDynamicColorScheme]) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightDynamicColorScheme != null ? lightDynamicColorScheme.harmonized() : _defaultLight,
    );
  }

  ThemeData getDarkTheme([ColorScheme? darkDynamicColorScheme]) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: darkDynamicColorScheme != null ? darkDynamicColorScheme.harmonized() : _defaultDark,
    );
  }
}
