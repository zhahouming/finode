import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finode_ios_method_channel.dart';

abstract class FinodeIosPlatform extends PlatformInterface {
  /// Constructs a FinodeIosPlatform.
  FinodeIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static FinodeIosPlatform _instance = MethodChannelFinodeIos();

  /// The default instance of [FinodeIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelFinodeIos].
  static FinodeIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinodeIosPlatform] when
  /// they register themselves.
  static set instance(FinodeIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
