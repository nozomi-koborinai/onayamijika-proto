import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed

/// アカウント_モデル
class Account with _$Account {
  const factory Account(
      {

      /// アカウントID
      @JsonKey(name: 'account_id')
          required String accountId,

      /// アカウント名
      @JsonKey(name: 'account_name')
          required String accountName,

      /// アカウントに使用する画像のURL
      @JsonKey(name: 'account_image_url')
          required String accountImageUrl}) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
