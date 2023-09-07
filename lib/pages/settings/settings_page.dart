import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:locale_names/locale_names.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/pages/settings/about.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/extensions/string_extensions.dart';
import 'package:starter/utils/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  void _selectTheme(BuildContext context) {
    showAdaptiveDialog<ThemeMode>(
      context: context,
      builder: (context) {
        return SimpleDialog(
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
      Themes().setThemeMode(themeMode);
    });
  }

  void _selectLanguage(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Theme'),
          children: AppLocalizations.supportedLocales.map((locale) {
            return ListTile(
              title: Text(locale.nativeDisplayLanguage),
              onTap: () {},
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SettingsList(
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
                    value: Text(Themes().themeMode.name.capitalized),
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
            ],
          ),
        ),
        About(),
      ],
    );
  }
}
