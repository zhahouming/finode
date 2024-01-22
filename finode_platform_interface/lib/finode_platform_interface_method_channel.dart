import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'finode_platform_interface_platform_interface.dart';

/// An implementation of [FinodePlatformInterfacePlatform] that uses method channels.
class MethodChannelFinodePlatformInterface extends FinodePlatformInterfacePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('finode_platform_interface');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
