import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_storage_service.dart';

/// StorageServiceのインスタンスを保持するプロバイダ
final storageServiceProvider = Provider<IStorageService>(
  (ref) => StorageService(),
);

/// Firebase Storageを操作するためのサービスを提供するクラス
class StorageService implements IStorageService {
  //// Firebase Cloud Storageにアップロード
  @override
  Future<String> uploadImageFile(
      {required String uId, required Uint8List sealImage}) async {
    // final fileName = FunctionUtils.instance.getFileName(sealImage);
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('users/$uId/${DateTime.now().toString()}.png');
    final task = await storageRef.putData(sealImage);
    return await task.ref.getDownloadURL();
  }
}
