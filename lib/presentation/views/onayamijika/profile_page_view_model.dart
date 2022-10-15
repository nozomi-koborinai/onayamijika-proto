import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/presentation/views/onayamijika/profile_edit_page.dart';

/// ProfilePageViewModelのインスタンスを返却するプロバイダ
final profilePageViewModelProvider = Provider<ProfilePageViewModel>((ref) =>
    ProfilePageViewModel(
        ref: ref, repository: ref.watch(accountRepositoryProvider)));

final imageURLStateProvider = StateProvider((_) => TextEditingController(
    text: Authentication.instance.myAccount.accountImageUrl));
final accountNameStateProvider = StateProvider((_) =>
    TextEditingController(text: Authentication.instance.myAccount.accountName));
final accountIdStateProvider = StateProvider((_) =>
    TextEditingController(text: Authentication.instance.myAccount.accountId));

class ProfilePageViewModel {
  final ProviderRef ref;
  final IAccountRepository repository;

  /// constructor
  ProfilePageViewModel({required this.ref, required this.repository});

  // バインド用 getter
  get imageURL => ref.watch(imageURLStateProvider.state).state.text;
  get accountName => ref.watch(accountNameStateProvider.state).state.text;
  get accountId => ref.watch(accountIdStateProvider.state).state.text;

  // イベントハンドラ
  /// 編集ボタンタップ時
  Future<void> onPressedFromEdit(BuildContext context) async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (content) => const ProfileEditPage()));
  }
}
