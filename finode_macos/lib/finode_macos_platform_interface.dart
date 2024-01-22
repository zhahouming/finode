import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finode_macos_method_channel.dart';

abstract class FinodeMacosPlatform extends PlatformInterface {
  /// Constructs a FinodeMacosPlatform.
  FinodeMacosPlatform() : super(token: _token);

  static final Object _token = Object();

  static FinodeMacosPlatform _instance = MethodChannelFinodeMacos();

  /// The default instance of [FinodeMacosPlatform] to use.
  ///
  /// Defaults to [MethodChannelFinodeMacos].
  static FinodeMacosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinodeMacosPlatform] when
  /// they register themselves.
  static set instance(FinodeMacosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
