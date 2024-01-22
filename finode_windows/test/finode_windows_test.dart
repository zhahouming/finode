import 'package:flutter_test/flutter_test.dart';
import 'package:finode_windows/finode_windows.dart';
import 'package:finode_windows/finode_windows_platform_interface.dart';
import 'package:finode_windows/finode_windows_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFinodeWindowsPlatform
    with MockPlatformInterfaceMixin
    implements FinodeWindowsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FinodeWindowsPlatform initialPlatform = FinodeWindowsPlatform.instance;

  test('$MethodChannelFinodeWindows is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFinodeWindows>());
  });

  test('getPlatformVersion', () async {
    FinodeWindows finodeWindowsPlugin = FinodeWindows();
    MockFinodeWindowsPlatform fakePlatform = MockFinodeWindowsPlatform();
    FinodeWindowsPlatform.instance = fakePlatform;

    expect(await finodeWindowsPlugin.getPlatformVersion(), '42');
  });
}
