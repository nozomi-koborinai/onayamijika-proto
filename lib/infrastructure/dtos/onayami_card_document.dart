import 'package:freezed_annotation/freezed_annotation.dart';

part 'onayami_card_document.freezed.dart';
part 'onayami_card_document.g.dart';

@freezed

/// お悩みカード_モデル
class OnayamiCardDocument with _$OnayamiCardDocument {
  const factory OnayamiCardDocument({
    /// カード名
    @JsonKey(name: 'card_title') required String cardTitle,

    /// 詳細
    @JsonKey(name: 'content') required String content,

    /// 緯度
    @JsonKey(name: 'latitude') required double latitude,

    /// 経度
    @JsonKey(name: 'longitude') required double longitude,

    /// 作成者アカウントuid
    @JsonKey(name: 'create_account_uid') required String createAccountUid,

    /// カードの色
    @JsonKey(name: 'color_code') required String colorCode,
  }) = _OnayamiCardDocument;

  factory OnayamiCardDocument.fromJson(Map<String, dynamic> json) =>
      _$OnayamiCardDocumentFromJson(json);
}
