import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';

/// ProfilePageViewModelのインスタンスを返却するプロバイダ
final profilePageViewModelProvider = Provider<ProfilePageViewModel>((ref) =>
    ProfilePageViewModel(
        ref: ref, repository: ref.watch(accountRepositoryProvider)));

class ProfilePageViewModel {
  final ProviderRef ref;
  final IAccountRepository repository;

  /// constructor
  ProfilePageViewModel({required this.ref, required this.repository});

  // バインド用 getter
  get imageURL => Authentication.instance.myAccount.accountImageUrl;
  get accountName => Authentication.instance.myAccount.accountName;
  get accountId => Authentication.instance.myAccount.accountId;

  // イベントハンドラ
  /// 編集ボタンタップ時
  void onPressedFromEdit() {
    // TODO
    throw UnimplementedError();
  }
}
