import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finode_android_method_channel.dart';

abstract class FinodeAndroidPlatform extends PlatformInterface {
  /// Constructs a FinodeAndroidPlatform.
  FinodeAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static FinodeAndroidPlatform _instance = MethodChannelFinodeAndroid();

  /// The default instance of [FinodeAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelFinodeAndroid].
  static FinodeAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinodeAndroidPlatform] when
  /// they register themselves.
  static set instance(FinodeAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
