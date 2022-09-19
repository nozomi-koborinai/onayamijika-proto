// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onayami_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnayamiCard _$$_OnayamiCardFromJson(Map<String, dynamic> json) =>
    _$_OnayamiCard(
      cardTitle: json['card_title'] as String,
      content: json['content'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OnayamiCardToJson(_$_OnayamiCard instance) =>
    <String, dynamic>{
      'card_title': instance.cardTitle,
      'content': instance.content,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
