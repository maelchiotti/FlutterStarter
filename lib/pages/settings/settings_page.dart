import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/pages/settings/about.dart';
import 'package:starter/utils/themes/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  void _selectTheme(BuildContext context) {
    showAdaptiveDialog<ThemeMode>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Theme'),
          children: [
            ListTile(
              leading: Icon(Icons.smartphone),
              title: Text('System'),
              onTap: () {
                context.pop(ThemeMode.system);
              },
            ),
            ListTile(
              leading: Icon(Icons.light_mode),
              title: Text('Light'),
              onTap: () {
                context.pop(ThemeMode.light);
              },
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
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
          children: [
            ListTile(
              title: Text('English'),
              onTap: () {},
            ),
            ListTile(
              title: Text('French'),
              onTap: () {},
            ),
          ],
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
                    leading: Icon(Icons.color_lens),
                    title: Text('Theme'),
                    value: Text('Light'),
                    onPressed: _selectTheme,
                  ),
                  SettingsTile.navigation(
                    leading: Icon(Icons.language),
                    title: Text('Language'),
                    value: Text('English'),
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
