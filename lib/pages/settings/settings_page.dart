import 'package:flutter/material.dart';
import 'package:locale_names/locale_names.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/pages/settings/settings_actions.dart';
import 'package:starter/utils/constants/constants.dart';
import 'package:starter/utils/constants/paddings.dart';
import 'package:starter/utils/extensions/string_extension.dart';
import 'package:starter/utils/theme_utils.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage();

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final interactions = SettingsActions();

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      platform: DevicePlatform.android,
      contentPadding: Paddings.custom.bottomSystemUi,
      lightTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).colorScheme.surface,
      ),
      darkTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).colorScheme.surface,
      ),
      sections: [
        SettingsSection(
          title: Text(localizations.settings_appearance),
          tiles: [
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: Text(localizations.settings_language),
              value: Text(Localizations.localeOf(context).nativeDisplayLanguage.capitalized),
              onPressed: interactions.selectLanguage,
            ),
            SettingsTile.navigation(
              leading: const Icon(Icons.palette),
              title: Text(localizations.settings_theme),
              value: Text(ThemeUtils().themeModeName),
              onPressed: (context) async {
                await interactions.selectTheme(context);
                setState(() {});
              },
            ),
            SettingsTile.switchTile(
              enabled: ThemeUtils().isDynamicThemingAvailable,
              leading: const Icon(Icons.bolt),
              title: Text(localizations.settings_dynamic_theming),
              description: Text(localizations.settings_dynamic_theming_description),
              initialValue: ThemeUtils().useDynamicTheming,
              onToggle: interactions.toggleDynamicTheming,
            ),
            SettingsTile.switchTile(
              enabled: ThemeUtils().brightness == Brightness.dark,
              leading: const Icon(Icons.nightlight),
              title: Text(localizations.settings_black_theming),
              description: Text(localizations.settings_black_theming_description),
              initialValue: ThemeUtils().useBlackTheming,
              onToggle: (toggled) {
                interactions.toggleBlackTheming(toggled);
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
