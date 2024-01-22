import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finode_windows_platform_interface.dart';

/// An implementation of [FinodeWindowsPlatform] that uses method channels.
class MethodChannelFinodeWindows extends FinodeWindowsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finode_windows');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
