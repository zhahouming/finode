import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finode_android_platform_interface.dart';

/// An implementation of [FinodeAndroidPlatform] that uses method channels.
class MethodChannelFinodeAndroid extends FinodeAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finode_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
