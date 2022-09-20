import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/models/account.dart';
import 'package:onayamijika/infrastructure/dtos/account_document.dart';

final accountRepositoryProvider = Provider<IAccountRepository>(
  (_) => throw UnimplementedError(),
);

abstract class IAccountRepository {
  Future<void> addAccount({required AccountDocument newAccount});
  Future<Account> fetchAccountFromUid({required String uid});
}
