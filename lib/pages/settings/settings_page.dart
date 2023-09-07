import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:locale_names/locale_names.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/extensions/string_extensions.dart';
import 'package:starter/utils/locale_manager.dart';
import 'package:starter/utils/package_info_manager.dart';
import 'package:starter/utils/theme_manager.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  void _selectTheme(BuildContext context) {
    showAdaptiveDialog<ThemeMode>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          clipBehavior: Clip.hardEdge,
          title: Text(localizations.settings_theme),
          children: [
            ListTile(
              leading: const Icon(Icons.smartphone),
              title: Text('System'),
              onTap: () {
                context.pop(ThemeMode.system);
              },
            ),
            ListTile(
              leading: const Icon(Icons.light_mode),
              title: Text('Light'),
              onTap: () {
                context.pop(ThemeMode.light);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: Text('Dark'),
              onTap: () {
                context.pop(ThemeMode.dark);
              },
            ),
          ],
        );
      },
    ).then((themeMode) {
      ThemeManager().setThemeMode(themeMode);
    });
  }

  void _selectLanguage(BuildContext context) {
    showAdaptiveDialog<Locale>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          clipBehavior: Clip.hardEdge,
          title: Text('Theme'),
          children: AppLocalizations.supportedLocales.map((locale) {
            return ListTile(
              title: Text(locale.nativeDisplayLanguage),
              onTap: () {
                context.pop(locale);
              },
            );
          }).toList(),
        );
      },
    ).then((locale) {
      LocaleManager().setLocale(locale);
    });
  }

  void _openGitHub(_) {
    launchUrlString('https://github.com/maelchiotti/flutter_starter');
  }

  void _openLicense(_) {
    launchUrlString('https://opensource.org/license/mit/');
  }

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      lightTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).colorScheme.background,
      ),
      darkTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).colorScheme.background,
      ),
      sections: [
        SettingsSection(
          title: Text('Appearance'),
          tiles: [
            SettingsTile.navigation(
              leading: const Icon(Icons.palette),
              title: Text('Theme'),
              value: Text(ThemeManager().themeMode.name.capitalized),
              onPressed: _selectTheme,
            ),
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: Text('Language'),
              value: Text(Localizations.localeOf(context).nativeDisplayLanguage),
              onPressed: _selectLanguage,
            ),
          ],
        ),
        SettingsSection(
          title: Text('About'),
          tiles: [
            SettingsTile(
              leading: const Icon(Icons.info),
              title: Text(PackageInfoManager().name),
              value: Text(PackageInfoManager().version),
            ),
            SettingsTile(
              leading: const Icon(SimpleIcons.github),
              title: Text('GitHub'),
              value: Text('Take a look at the source code'),
              onPressed: _openGitHub,
            ),
            SettingsTile(
              leading: const Icon(Icons.balance),
              title: Text('License'),
              value: Text('MIT'),
              onPressed: _openLicense,
            ),
          ],
        ),
      ],
    );
  }
}
