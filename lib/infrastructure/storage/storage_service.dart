import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_storage_service.dart';
import 'package:onayamijika/utils/function_utils.dart';

/// StorageServiceのインスタンスを保持するプロバイダ
final storageServiceProvider = Provider<IStorageService>(
  (ref) => StorageService(),
);

/// Firebase Storageを操作するためのサービスを提供するクラス
class StorageService implements IStorageService {
  //// Firebase Cloud Storageにアップロード
  @override
  Future<String> uploadImageFile(
      {required String uId, required File sealImage}) async {
    final fileName = FunctionUtils.instance.getFileName(sealImage);
    final storageRef =
        FirebaseStorage.instance.ref().child('users/$uId/$fileName');
    final task = await storageRef.putFile(sealImage);
    return await task.ref.getDownloadURL();
  }
}
