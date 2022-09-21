import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_storage_service.dart';

/// StorageServiceのインスタンスを保持するプロバイダ
final storageServiceProvider = Provider<IStorageService>(
  (ref) => StorageService(),
);

/// Firebase Storageを操作するためのサービスを提供するクラス
class StorageService implements IStorageService {
  /// 画像データを保存する
  @override
  Future<String> uploadImageFile(File image) {
    // TODO: implement uploadImageFile
    throw UnimplementedError();
  }
}
