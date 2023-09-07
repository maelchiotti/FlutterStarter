import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:starter/utils/themes.dart';

final themeModeNotifier = ValueNotifier<ThemeMode>(Themes().themeMode);

final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root navigator key');

final localizations = AppLocalizations.of(navigatorKey.currentContext!)!;
