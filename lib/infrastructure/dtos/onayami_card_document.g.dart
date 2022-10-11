// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onayami_card_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnayamiCardDocument _$$_OnayamiCardDocumentFromJson(
        Map<String, dynamic> json) =>
    _$_OnayamiCardDocument(
      cardTitle: json['card_title'] as String,
      content: json['content'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createAccountUid: json['create_account_uid'] as String,
      colorCode: json['color_code'] as String,
      createdDateTime: const TimestampConverter()
          .fromJson(json['created_date_time'] as Timestamp),
    );

Map<String, dynamic> _$$_OnayamiCardDocumentToJson(
        _$_OnayamiCardDocument instance) =>
    <String, dynamic>{
      'card_title': instance.cardTitle,
      'content': instance.content,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'create_account_uid': instance.createAccountUid,
      'color_code': instance.colorCode,
      'created_date_time':
          const TimestampConverter().toJson(instance.createdDateTime),
    };
