import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/models/account.dart';
import 'package:onayamijika/infrastructure/%20infrastructure_providers.dart';
import 'package:onayamijika/infrastructure/dtos/account_document.dart';

/// アカウントコレクション名のプロバイダ
final accountCollectionNameProvider = Provider((_) => 'accounts');

/// アカウントコレクションReferenceのプロバイダ
final accountCollectionRefProvider =
    Provider<CollectionReference<Map<String, dynamic>>>((ref) => ref
        .watch(firebaseFirestoreProvider)
        .collection(ref.watch(accountCollectionNameProvider)));

/// AccountRepositoryのインスタンスを保持するプロバイダ
final firebaseAccountRepositoryProvider = Provider<IAccountRepository>(
  (ref) => AccountRepository(
    collectionRef: ref.watch(accountCollectionRefProvider),
  ),
);

class AccountRepository implements IAccountRepository {
  final CollectionReference<Map<String, dynamic>> collectionRef;
  AccountRepository({
    required this.collectionRef,
  });

  @override

  /// 新規アカウント追加
  Future<void> addAccount({required AccountDocument newAccount}) {
    // TODO: implement addAccount
    throw UnimplementedError();
  }

  @override

  /// UserCredential.uidから紐づくAccountを1件取得
  Future<Account> fetchAccountFromUid({required String uid}) {
    // TODO: implement fetchAccountFromUid
    throw UnimplementedError();
  }
}
