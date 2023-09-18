import 'dart:io';

import 'package:flutter/foundation.dart';

class PlatformManager {
  static final PlatformManager _singleton = PlatformManager._internal();

  factory PlatformManager() {
    return _singleton;
  }

  PlatformManager._internal();

  bool isMobile() {
    if (kIsWeb) {
      return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
    } else {
      return Platform.isAndroid || Platform.isIOS;
    }
  }
}
