import 'package:flutter/material.dart';
import 'package:starter/l10n/app_localizations.g.dart';
import 'package:starter/utils/theme_utils.dart';

final themeModeNotifier = ValueNotifier(ThemeUtils().themeMode);
final dynamicThemingNotifier = ValueNotifier(ThemeUtils().useDynamicTheming);
final blackThemingNotifier = ValueNotifier(ThemeUtils().useBlackTheming);

final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root navigator key');
final drawerKey = GlobalKey<ScaffoldState>(debugLabel: 'Drawer key');

final localizations = AppLocalizations.of(navigatorKey.currentContext!)!;
