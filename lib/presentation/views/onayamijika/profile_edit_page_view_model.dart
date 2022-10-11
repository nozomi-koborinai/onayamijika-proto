import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';

final profileEditPageViewModelProvider = Provider<ProfileEditPageViewModel>(
    (ref) => ProfileEditPageViewModel(
        ref: ref, repository: ref.watch(accountRepositoryProvider)));

final emailControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));
final userIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));
final passWordIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

class ProfileEditPageViewModel {
  final ProviderRef ref;
  final IAccountRepository repository;

  ProfileEditPageViewModel({required this.ref, required this.repository});

  TextEditingController get emailController =>
      ref.watch(emailControllerStateProvider.state).state;
  TextEditingController get userIdController =>
      ref.watch(userIdControllerStateProvider.state).state;
  TextEditingController get passWordController =>
      ref.watch(passWordIdControllerStateProvider.state).state;
}
