import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/infrastructure/dtos/account_document.dart';

final profileEditPageViewModelProvider = Provider<ProfileEditPageViewModel>(
    (ref) => ProfileEditPageViewModel(
        ref: ref, repository: ref.watch(accountRepositoryProvider)));

final accountNameControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(
        text: Authentication.instance.myAccount.accountName));
final accountIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(
        text: Authentication.instance.myAccount.accountId));

class ProfileEditPageViewModel {
  final ProviderRef ref;
  final IAccountRepository repository;

  ProfileEditPageViewModel({required this.ref, required this.repository});

  TextEditingController get accountNameController =>
      ref.watch(accountNameControllerStateProvider.state).state;
  TextEditingController get accountIdController =>
      ref.watch(accountIdControllerStateProvider.state).state;

  get imageURL => Authentication.instance.myAccount.accountImageUrl;

  void onPressed() async {
    repository.updateAccount(
        updateAccount: AccountDocument(
            accountId: accountIdController.text,
            accountName: accountNameController.text,
            accountImageUrl:
                Authentication.instance.myAccount.accountImageUrl));
  }
}
