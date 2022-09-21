import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storageServiceProvider = Provider<IStorageService>(
  (_) => throw UnimplementedError(),
);

abstract class IStorageService {
  Future<String> uploadImageFile(
      {required String uId, required Uint8List sealImage});
}
