import 'package:flutter/material.dart';
import 'package:starter/l10n/app_localizations.g.dart';
import 'package:starter/utils/locale_utils.dart';
import 'package:starter/utils/theme_utils.dart';

final localeNotifier = ValueNotifier<Locale>(LocaleManager().locale);
final themeModeNotifier = ValueNotifier<ThemeMode>(ThemeUtils().themeMode);

final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root navigator key');

final localizations = AppLocalizations.of(navigatorKey.currentContext!)!;
