import 'package:flutter/foundation.dart';

class PlatformDetection {
  PlatformDetection._();
  static bool isDesktop = defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS;
  static bool isMobile = defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;
  static bool isWeb = kIsWeb;
}
