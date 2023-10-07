import 'package:flutter/material.dart';
import 'package:starter/l10n/app_localizations.g.dart';
import 'package:starter/utils/locale_manager.dart';
import 'package:starter/utils/theme_manager.dart';

final localeNotifier = ValueNotifier<Locale>(LocaleManager().locale);
final themeModeNotifier = ValueNotifier<ThemeMode>(ThemeManager().themeMode);

final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root navigator key');

final localizations = AppLocalizations.of(navigatorKey.currentContext!)!;
