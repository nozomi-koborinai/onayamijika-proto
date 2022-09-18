import 'package:firebase_auth/firebase_auth.dart';

/// FirebaseAuthが返却するエラーコードを定義したenum
enum FirebaseAuthResultStatus {
  successful,
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  weakPassword,
  undefined,
}

/// FirebaseAuth関連のエラーハンドリング用クラス
class FirebaseAuthError {
  /// singleton
  FirebaseAuthError._();
  static final instance = FirebaseAuthError._();

  FirebaseAuthResultStatus handleException(FirebaseAuthException e) {
    FirebaseAuthResultStatus result;
    switch (e.code) {
      case 'invalid-email':
        result = FirebaseAuthResultStatus.invalidEmail;
        break;
      case 'wrong-password':
        result = FirebaseAuthResultStatus.wrongPassword;
        break;
      case 'user-disabled':
        result = FirebaseAuthResultStatus.userDisabled;
        break;
      case 'user-not-found':
        result = FirebaseAuthResultStatus.userNotFound;
        break;
      case 'operation-not-allowed':
        result = FirebaseAuthResultStatus.operationNotAllowed;
        break;
      case 'too-many-requests':
        result = FirebaseAuthResultStatus.tooManyRequests;
        break;
      case 'email-already-exists':
        result = FirebaseAuthResultStatus.emailAlreadyExists;
        break;
      case 'weak-password':
        result = FirebaseAuthResultStatus.weakPassword;
        break;
      default:
        result = FirebaseAuthResultStatus.undefined;
    }
    return result;
  }

  // TODO：メッセージ見直し
  String exceptionMessage(FirebaseAuthResultStatus result) {
    String? message = '';
    switch (result) {
      case FirebaseAuthResultStatus.successful:
        message = 'ログインに成功しました。';
        break;
      case FirebaseAuthResultStatus.emailAlreadyExists:
        message = '指定されたメールアドレスは既に使用されています。';
        break;
      case FirebaseAuthResultStatus.wrongPassword:
        message = 'パスワードが違います。';
        break;
      case FirebaseAuthResultStatus.invalidEmail:
        message = 'メールアドレスが不正です。';
        break;
      case FirebaseAuthResultStatus.userNotFound:
        message = '指定されたユーザーは存在しません。';
        break;
      case FirebaseAuthResultStatus.userDisabled:
        message = '指定されたユーザーは無効です。';
        break;
      case FirebaseAuthResultStatus.operationNotAllowed:
        message = '指定されたユーザーはこの操作を許可していません。';
        break;
      case FirebaseAuthResultStatus.tooManyRequests:
        message = '指定されたユーザーはこの操作を許可していません。';
        break;
      case FirebaseAuthResultStatus.weakPassword:
        message = '6 文字以上の文字列を指定する必要があります。';
        break;
      case FirebaseAuthResultStatus.undefined:
        message = '不明なエラーが発生しました。';
        break;
    }
    return message;
  }
}
