import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onayamijika/domain/%20converters/time_stamp_converter.dart';

part 'solution_seal_document.freezed.dart';
part 'solution_seal_document.g.dart';

@freezed

/// お悩み解決シール_モデル
class SolutionSealDocument with _$SolutionSealDocument {
  const factory SolutionSealDocument({
    /// シールデータの種類
    @JsonKey(name: 'seal_type') required String sealType,

    /// テキストデータ
    /// ※ seal_typeが"テキスト"のみの場合のみ使用されるフィールド
    @JsonKey(name: 'text') required String text,

    /// お絵描きデータの画像URL
    @JsonKey(name: 'image_url') required String imageUrl,

    /// お気に入りに認定されたシールかどうか(true：お気に入り、false：通常)
    @JsonKey(name: 'is_favorite') required bool isFavorite,

    /// シールを貼る対象のお悩みカードのドキュメントID
    @JsonKey(name: 'card_id') required String cardId,

    /// シール作成日時
    @JsonKey(name: 'created_date_time')
    @TimestampConverter()
        required DateTime createdDateTime,
  }) = _SolutionSealDocument;

  factory SolutionSealDocument.fromJson(Map<String, dynamic> json) =>
      _$SolutionSealDocumentFromJson(json);
}

/// お悩みシール_データタイプ
enum SealType {
  /// テキストデータ
  text,

  /// お絵描きデータ
  paint,
}
