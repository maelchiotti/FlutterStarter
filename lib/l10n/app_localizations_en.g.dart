import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Starter';

  @override
  String get navigation_home => 'Home';

  @override
  String get navigation_settings => 'Settings';

  @override
  String get settings_appearance => 'Appearance';

  @override
  String get settings_theme => 'Theme';

  @override
  String get settings_theme_system => 'System';

  @override
  String get settings_theme_light => 'Light';

  @override
  String get settings_theme_dark => 'Dark';

  @override
  String get settings_language => 'Language';

  @override
  String get settings_language_restart =>
      'Please restart the app for the changes to take effect.';

  @override
  String get settings_about => 'About';

  @override
  String get settings_github => 'GitHub';

  @override
  String get settings_github_description => 'Take a look at the source code';

  @override
  String get settings_licence => 'License';

  @override
  String get settings_licence_description => 'MIT';
}
