import 'dart:io';

import 'package:flutter/foundation.dart';

bool get isMobile {
  if (kIsWeb) {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  } else {
    return Platform.isAndroid || Platform.isIOS;
  }
}

bool get isAndroid {
  return kIsWeb ? defaultTargetPlatform == TargetPlatform.android : Platform.isAndroid;
}
