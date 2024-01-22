import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finode_ios_platform_interface.dart';

/// An implementation of [FinodeIosPlatform] that uses method channels.
class MethodChannelFinodeIos extends FinodeIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finode_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
