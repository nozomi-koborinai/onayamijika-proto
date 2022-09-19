// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_seal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SolutionSeal _$$_SolutionSealFromJson(Map<String, dynamic> json) =>
    _$_SolutionSeal(
      sealType: json['seal_type'] as String,
      text: json['text'] as String,
      imageUrl: json['image_url'] as String,
      isFavorite: json['is_favorite'] as String,
    );

Map<String, dynamic> _$$_SolutionSealToJson(_$_SolutionSeal instance) =>
    <String, dynamic>{
      'seal_type': instance.sealType,
      'text': instance.text,
      'image_url': instance.imageUrl,
      'is_favorite': instance.isFavorite,
    };
