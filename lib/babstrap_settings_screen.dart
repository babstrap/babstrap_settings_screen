
import 'dart:async';

import 'package:flutter/services.dart';

class BabstrapSettingsScreen {
  static const MethodChannel _channel =
      const MethodChannel('babstrap_settings_screen');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
