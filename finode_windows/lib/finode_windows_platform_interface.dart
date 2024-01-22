import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'finode_windows_method_channel.dart';

abstract class FinodeWindowsPlatform extends PlatformInterface {
  /// Constructs a FinodeWindowsPlatform.
  FinodeWindowsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FinodeWindowsPlatform _instance = MethodChannelFinodeWindows();

  /// The default instance of [FinodeWindowsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFinodeWindows].
  static FinodeWindowsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FinodeWindowsPlatform] when
  /// they register themselves.
  static set instance(FinodeWindowsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
