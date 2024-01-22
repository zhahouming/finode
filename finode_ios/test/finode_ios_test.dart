import 'package:flutter_test/flutter_test.dart';
import 'package:finode_ios/finode_ios.dart';
import 'package:finode_ios/finode_ios_platform_interface.dart';
import 'package:finode_ios/finode_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFinodeIosPlatform
    with MockPlatformInterfaceMixin
    implements FinodeIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FinodeIosPlatform initialPlatform = FinodeIosPlatform.instance;

  test('$MethodChannelFinodeIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFinodeIos>());
  });

  test('getPlatformVersion', () async {
    FinodeIos finodeIosPlugin = FinodeIos();
    MockFinodeIosPlatform fakePlatform = MockFinodeIosPlatform();
    FinodeIosPlatform.instance = fakePlatform;

    expect(await finodeIosPlugin.getPlatformVersion(), '42');
  });
}
