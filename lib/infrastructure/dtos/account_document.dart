import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_document.freezed.dart';
part 'account_document.g.dart';

@freezed

/// アカウント_モデル
class AccountDocument with _$AccountDocument {
  const factory AccountDocument(
      {

      /// アカウントID
      @JsonKey(name: 'account_id')
          required String accountId,

      /// アカウント名
      @JsonKey(name: 'account_name')
          required String accountName,

      /// アカウントに使用する画像のURL
      @JsonKey(name: 'account_image_url')
          required String accountImageUrl}) = _AccountDocument;

  factory AccountDocument.fromJson(Map<String, dynamic> json) =>
      _$AccountDocumentFromJson(json);
}
