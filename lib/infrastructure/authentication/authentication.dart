import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onayamijika/domain/models/account.dart';
import 'package:onayamijika/infrastructure/authentication/firebase_auth_error.dart';
import 'package:onayamijika/utils/dialog_utils.dart';

class Authentication {
  /// singleton
  Authentication._();
  static final instance = Authentication._();

  /// ログインしている自分のアカウント
  late Account myAccount = const Account(
      accountId: '', accountName: '', accountImageUrl: '', accountUid: '');

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  ///新規ユーザ登録処理
  ///指定されたメールアドレスとパスワードから新規ユーザを生成
  Future<dynamic> signUp(
      {required String email,
      required String pass,
      required BuildContext context}) async {
    try {
      UserCredential newAccount = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: pass);
      return newAccount;
    } on FirebaseAuthException catch (e) {
      final String message = FirebaseAuthError.instance
          .exceptionMessage(FirebaseAuthError.instance.handleException(e));
      DialogUtils.instance.showDialogError(context: context, msg: message);
      return false;
    }
  }
}
