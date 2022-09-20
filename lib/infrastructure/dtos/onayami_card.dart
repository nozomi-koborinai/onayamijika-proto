import 'package:freezed_annotation/freezed_annotation.dart';

part 'onayami_card.freezed.dart';
part 'onayami_card.g.dart';

@freezed

/// お悩みカード_モデル
class OnayamiCard with _$OnayamiCard {
  const factory OnayamiCard({
    /// カード名
    @JsonKey(name: 'card_title') required String cardTitle,

    /// 詳細
    @JsonKey(name: 'content') required String content,

    /// 緯度
    @JsonKey(name: 'latitude') required double latitude,

    /// 経度
    @JsonKey(name: 'longitude') required double longitude,
  }) = _OnayamiCard;

  factory OnayamiCard.fromJson(Map<String, dynamic> json) =>
      _$OnayamiCardFromJson(json);
}
