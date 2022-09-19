import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/presentation/views/onayamijika/screen.dart';

/// SignUpPageViewModelのインスタンスを返却するプロバイダ
final signUpPageViewModelProvider =
    Provider<SignUpPageViewModel>((ref) => SignUpPageViewModel(ref: ref));

/// メールアドレステキストコントローラ
final emailControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// ユーザIDテキストコントローラ
final userIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// パスワードテキストコントローラ
final passWordIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

class SignUpPageViewModel {
  final ProviderRef ref;

  /// constructor
  SignUpPageViewModel({required this.ref});

  // 各Providerのgetter（viewとのバインド用)
  TextEditingController get emailController =>
      ref.watch(emailControllerStateProvider.state).state;
  TextEditingController get userIdController =>
      ref.watch(userIdControllerStateProvider.state).state;
  TextEditingController get passWordController =>
      ref.watch(passWordIdControllerStateProvider.state).state;

  /// 登録ボタン押下時
  Future<void> onPressedFromRegist({required BuildContext context}) async {
    // 登録処理
    // 失敗したら以降の処理はやる必要ないのでここで処理終了
    if (!await userRegist(context: context)) return;

    // 画面遷移処理 -> お悩みカード一覧ページへ
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen(),
      ),
    );
  }

  /// ユーザ登録処理
  Future<bool> userRegist({required BuildContext context}) async {
    // TODO：ユーザ認証。一旦成功状態にしておく。
    return true;

    final result = await Authentication.instance.signUp(
        email: emailController.text,
        pass: passWordController.text,
        context: context);
    return result is UserCredential;
  }
}
