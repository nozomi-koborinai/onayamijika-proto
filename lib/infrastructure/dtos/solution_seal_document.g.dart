// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_seal_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SolutionSealDocument _$$_SolutionSealDocumentFromJson(
        Map<String, dynamic> json) =>
    _$_SolutionSealDocument(
      sealType: json['seal_type'] as String,
      text: json['text'] as String,
      imageUrl: json['image_url'] as String,
      isFavorite: json['is_favorite'] as bool,
      cardId: json['card_id'] as String,
    );

Map<String, dynamic> _$$_SolutionSealDocumentToJson(
        _$_SolutionSealDocument instance) =>
    <String, dynamic>{
      'seal_type': instance.sealType,
      'text': instance.text,
      'image_url': instance.imageUrl,
      'is_favorite': instance.isFavorite,
      'card_id': instance.cardId,
    };
