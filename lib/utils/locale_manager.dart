import 'package:flutter/material.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/preferences/preference_key.dart';
import 'package:starter/utils/preferences/preferences_manager.dart';

class LocaleManager {
  Locale get locale {
    final preferredLocaleLanguageCode = PreferencesManager().get<String>(PreferenceKey.locale);

    if (preferredLocaleLanguageCode != null) {
      return Locale(preferredLocaleLanguageCode);
    } else {
      return const Locale('en');
    }
  }

  void setLocale(Locale? locale) {
    if (locale == null) return;

    PreferencesManager().set(PreferenceKey.theme.key, locale.languageCode);

    localeNotifier.value = locale;
  }
}
