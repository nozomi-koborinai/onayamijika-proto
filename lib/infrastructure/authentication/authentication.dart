import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onayamijika/domain/models/account.dart';
import 'package:onayamijika/infrastructure/authentication/firebase_auth_error.dart';
import 'package:onayamijika/infrastructure/dtos/account_document.dart';
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

  ///ログイン処理
  ///ログイン失敗時にException発生
  Future<dynamic> emailSignIn(
      {required String email, required String pass}) async {
    try {
      final UserCredential result = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: pass);
      final snapshot = await FirebaseFirestore.instance
          .collection('accounts')
          .doc(result.user!.uid)
          .get();
      if (snapshot.data() == null) return false;
      final accountDocument = AccountDocument.fromJson(snapshot.data()!);

      Authentication.instance.myAccount = Account(
          accountId: accountDocument.accountId,
          accountName: accountDocument.accountName,
          accountImageUrl: accountDocument.accountImageUrl,
          accountUid: result.user!.uid);
      return result;
    } on FirebaseException {
      // authサインインエラー
      return false;
    }
  }
}
