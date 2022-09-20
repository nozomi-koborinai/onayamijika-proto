import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed

/// アカウント_モデル(クライアント用)
class Account with _$Account {
  const factory Account({
    /// アカウントID
    required String accountId,

    /// アカウント名
    required String accountName,

    /// アカウントに使用する画像のURL
    required String accountImageUrl,

    /// UserCredentialのuid
    required String accountUid,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
