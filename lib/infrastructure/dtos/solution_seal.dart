import 'package:freezed_annotation/freezed_annotation.dart';

part 'solution_seal.freezed.dart';
part 'solution_seal.g.dart';

@freezed

/// お悩み解決シール_モデル
class SolutionSeal with _$SolutionSeal {
  const factory SolutionSeal({
    /// シールデータの種類
    @JsonKey(name: 'seal_type') required String sealType,

    /// テキストデータ
    /// ※ seal_typeが"テキスト"のみの場合のみ使用されるフィールド
    @JsonKey(name: 'text') required String text,

    /// お絵描きデータの画像URL
    @JsonKey(name: 'image_url') required String imageUrl,

    /// お気に入りに認定されたシールかどうか(true：お気に入り、false：通常)
    @JsonKey(name: 'is_favorite') required String isFavorite,
  }) = _SolutionSeal;

  factory SolutionSeal.fromJson(Map<String, dynamic> json) =>
      _$SolutionSealFromJson(json);
}

/// お悩みシール_データタイプ
enum SealType {
  /// テキストデータ
  text,

  /// お絵描きデータ
  paint,
}
