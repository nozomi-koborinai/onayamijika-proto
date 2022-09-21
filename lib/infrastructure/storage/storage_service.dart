import 'dart:async';
import 'dart:io';

/// Firebase Storageを操作するためのサービスを提供するクラス
class StorageService {
  /// singleton
  static final StorageService instance = StorageService._();
  StorageService._();

  /// 画像データを保存する
  Future<bool> saveImage({required File file}) async {
    /// TODO：保存処理
    return true;
  }
}
