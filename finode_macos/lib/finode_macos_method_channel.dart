import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finode_macos_platform_interface.dart';

/// An implementation of [FinodeMacosPlatform] that uses method channels.
class MethodChannelFinodeMacos extends FinodeMacosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finode_macos');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
