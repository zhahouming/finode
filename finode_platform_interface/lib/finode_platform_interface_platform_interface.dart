import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finode_platform_interface_method_channel.dart';

abstract class FinodePlatformInterfacePlatform extends PlatformInterface {
  /// Constructs a FinodePlatformInterfacePlatform.
  FinodePlatformInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static FinodePlatformInterfacePlatform _instance = MethodChannelFinodePlatformInterface();

  /// The default instance of [FinodePlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelFinodePlatformInterface].
  static FinodePlatformInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinodePlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(FinodePlatformInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
