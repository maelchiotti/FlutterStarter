<div align="center">
  <a href="https://pub.dev/packages/lint"><img src="https://img.shields.io/badge/Style-lint-blue.svg?logo=dart" alt="Lint" /></a>
  <img src="https://img.shields.io/badge/Platform-Android%20|%20iOS-blue.svg?logo=flutter" alt="Platforms" />
  <a href="https://github.com/maelchiotti/flutter_starter/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT%20-blue.svg?logo=Leanpub&color=red" alt="License" /></a>
</div>

# Starter

A ready-to-use Flutter project for Android and iOS.

## Disclaimer

This package is opinionated. Therefore, main packages will not change (`go_router`, `riverpod`, `lint`, etc.), unless they become deprecated, obsolete, or there is an obviously better alternative. If you prefer to use other packages, feel free to modify the code, either locally to fit your needs of by [forking](https://github.com/maelchiotti/flutter_starter/fork) this repository.

## Included

For more details, please see the [wiki](https://github.com/maelchiotti/flutter_starter/wiki).

- Folders and files structure
- Settings page ([settings_ui](https://pub.dev/packages/settings_ui)) with app version
- Adaptive bottom and top navigation
- Routing ([go_router](https://pub.dev/packages/go_router))
- State management ([riverpod](https://pub.dev/packages/flutter_riverpod))
- Models ([freezed](https://pub.dev/packages/freezed) and [json_serializable](https://pub.dev/packages/json_serializable))
- Asset enum to quickly access asset files
- Preferences utils ([shared_preferences](https://pub.dev/packages/shared_preferences))
- Package info utils ([package_info_plus](https://pub.dev/packages/package_info_plus))
- Platform utils ([Platform](https://api.flutter.dev/flutter/package-platform_platform/Platform-class.html), [kIsWeb](https://api.flutter.dev/flutter/foundation/kIsWeb-constant.html) and [defaultTargetPlatform](https://api.flutter.dev/flutter/foundation/defaultTargetPlatform.html))
- Localization with locale utils ([i18n](https://docs.flutter.dev/ui/accessibility-and-localization/internationalization))
- Dynamic system, light and dark themes with themes utils ([dynamic_color](https://pub.dev/packages/dynamic_color))
- Constants stored in enumerations (sizes, paddings, radiuses and separators)
- Splash screen ([flutter_native_splash](https://pub.dev/packages/flutter_native_splash))
- Launcher icons ([icons_launcher](https://pub.dev/packages/icons_launcher))
- Production-ready linting ([lint](https://pub.dev/packages/lint))

## TODO

- Add instructions on how to change the name of the app and other information