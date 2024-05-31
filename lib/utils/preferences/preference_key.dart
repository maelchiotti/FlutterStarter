import 'package:starter/utils/preferences/preferences_utils.dart';

enum PreferenceKey {
  // Appearance
  locale('en'),
  theme(0),
  dynamicTheming(true),
  blackTheming(false),
  ;

  final Object defaultValue;

  const PreferenceKey(this.defaultValue);

  T getPreferenceOrDefault<T>() {
    if (T == dynamic) {
      throw ArgumentError('The type T is required.');
    }

    if (T != bool && T != int && T != double && T != String && T != List<String>) {
      throw ArgumentError('The type T should be a native type (bool, int, double, String or List<String>), not $T.');
    }

    return PreferencesUtils().get<T>(this) ?? defaultValue as T;
  }
}
