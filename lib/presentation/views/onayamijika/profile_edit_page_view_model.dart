import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/infrastructure/dtos/account_document.dart';
import 'package:onayamijika/presentation/views/onayamijika/profile_page_view_model.dart';

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

  void onPressed(BuildContext context) async {
    await repository.updateAccount(
        updateAccount: AccountDocument(
            accountId: accountIdController.text,
            accountName: accountNameController.text,
            accountImageUrl:
                Authentication.instance.myAccount.accountImageUrl));
    ref.read(imageURLStateProvider.state).state = TextEditingController(
        text: Authentication.instance.myAccount.accountImageUrl);
    ref.read(accountIdStateProvider.state).state = TextEditingController(
        text: Authentication.instance.myAccount.accountId);
    ref.read(accountNameStateProvider.state).state = TextEditingController(
        text: Authentication.instance.myAccount.accountName);
    Navigator.of(context).pop();
  }
}
