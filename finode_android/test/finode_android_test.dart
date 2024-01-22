import 'package:flutter_test/flutter_test.dart';
import 'package:finode_android/finode_android.dart';
import 'package:finode_android/finode_android_platform_interface.dart';
import 'package:finode_android/finode_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFinodeAndroidPlatform
    with MockPlatformInterfaceMixin
    implements FinodeAndroidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FinodeAndroidPlatform initialPlatform = FinodeAndroidPlatform.instance;

  test('$MethodChannelFinodeAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFinodeAndroid>());
  });

  test('getPlatformVersion', () async {
    FinodeAndroid finodeAndroidPlugin = FinodeAndroid();
    MockFinodeAndroidPlatform fakePlatform = MockFinodeAndroidPlatform();
    FinodeAndroidPlatform.instance = fakePlatform;

    expect(await finodeAndroidPlugin.getPlatformVersion(), '42');
  });
}
