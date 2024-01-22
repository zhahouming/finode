import 'package:flutter_test/flutter_test.dart';
import 'package:finode_macos/finode_macos.dart';
import 'package:finode_macos/finode_macos_platform_interface.dart';
import 'package:finode_macos/finode_macos_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFinodeMacosPlatform
    with MockPlatformInterfaceMixin
    implements FinodeMacosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FinodeMacosPlatform initialPlatform = FinodeMacosPlatform.instance;

  test('$MethodChannelFinodeMacos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFinodeMacos>());
  });

  test('getPlatformVersion', () async {
    FinodeMacos finodeMacosPlugin = FinodeMacos();
    MockFinodeMacosPlatform fakePlatform = MockFinodeMacosPlatform();
    FinodeMacosPlatform.instance = fakePlatform;

    expect(await finodeMacosPlugin.getPlatformVersion(), '42');
  });
}
