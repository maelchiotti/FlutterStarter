import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Starter';

  @override
  String get app_tagline =>
      'A ready-to-use Flutter project for Android and iOS';

  @override
  String app_about(Object appName) {
    return '$appName is a ready-to-use Flutter project for Android and iOS.';
  }

  @override
  String get navigation_home => 'Home';

  @override
  String get navigation_settings => 'Settings';

  @override
  String get settings_appearance => 'Appearance';

  @override
  String get settings_language => 'Language';

  @override
  String get settings_theme => 'Theme';

  @override
  String get settings_theme_system => 'System';

  @override
  String get settings_theme_light => 'Light';

  @override
  String get settings_theme_dark => 'Dark';

  @override
  String get settings_dynamic_theming => 'Dynamic theming';

  @override
  String get settings_dynamic_theming_description =>
      'Generate colors from your system';

  @override
  String get settings_black_theming => 'Black theming';

  @override
  String get settings_black_theming_description =>
      'Use a black background in dark mode';

  @override
  String get settings_about => 'About';

  @override
  String get settings_github => 'GitHub';

  @override
  String get settings_github_description => 'Take a look at the source code';

  @override
  String get settings_licence => 'License';

  @override
  String get settings_licence_description => 'AGPL-3.0';

  @override
  String get settings_issue => 'Report a bug';

  @override
  String get settings_issue_description =>
      'Report a bug by creating an issue on GitHub';
}
