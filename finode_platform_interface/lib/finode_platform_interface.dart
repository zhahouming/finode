import 'dart:async';

import 'package:flutter/services.dart';

abstract class FinodePlatform {
  static FinodePlatform? _instance;

  static FinodePlatform get instance {
    _instance ??= FinodePlatformImpl();
    return _instance!;
  }

  Future<int> getFileId(String filePath);
}

class FinodePlatformImpl extends FinodePlatform {
  final MethodChannel _channel = const MethodChannel('siyouyun.cc/finode');

  @override
  Future<int> getFileId(String filePath) async {
    final int? fileId = await _channel.invokeMethod('getFileId', filePath);
    return fileId!;
  }
}
