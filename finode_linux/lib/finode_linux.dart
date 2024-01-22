import 'package:finode_platform_interface/finode_platform_interface.dart';

class FinodeLinux extends FinodePlatform {
  @override
  Future<int> getFileId(String filePath) async {
    // 在这里实现获取文件唯一ID的逻辑
    // 使用Linux的API来获取文件的inode
    // 返回文件的唯一ID
    return 0;
  }
}
