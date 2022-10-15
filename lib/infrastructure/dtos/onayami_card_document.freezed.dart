// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onayami_card_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnayamiCardDocument _$OnayamiCardDocumentFromJson(Map<String, dynamic> json) {
  return _OnayamiCardDocument.fromJson(json);
}

/// @nodoc
mixin _$OnayamiCardDocument {
  /// カード名
  @JsonKey(name: 'card_title')
  String get cardTitle => throw _privateConstructorUsedError;

  /// 詳細
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// 緯度
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;

  /// 経度
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  /// 作成者アカウントuid
  @JsonKey(name: 'create_account_uid')
  String get createAccountUid => throw _privateConstructorUsedError;

  /// カードの色
  @JsonKey(name: 'color_code')
  String get colorCode => throw _privateConstructorUsedError;

  /// カード作成日時
  @JsonKey(name: 'created_date_time')
  @TimestampConverter()
  DateTime get createdDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnayamiCardDocumentCopyWith<OnayamiCardDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnayamiCardDocumentCopyWith<$Res> {
  factory $OnayamiCardDocumentCopyWith(
          OnayamiCardDocument value, $Res Function(OnayamiCardDocument) then) =
      _$OnayamiCardDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'card_title')
          String cardTitle,
      @JsonKey(name: 'content')
          String content,
      @JsonKey(name: 'latitude')
          double latitude,
      @JsonKey(name: 'longitude')
          double longitude,
      @JsonKey(name: 'create_account_uid')
          String createAccountUid,
      @JsonKey(name: 'color_code')
          String colorCode,
      @JsonKey(name: 'created_date_time')
      @TimestampConverter()
          DateTime createdDateTime});
}

/// @nodoc
class _$OnayamiCardDocumentCopyWithImpl<$Res>
    implements $OnayamiCardDocumentCopyWith<$Res> {
  _$OnayamiCardDocumentCopyWithImpl(this._value, this._then);

  final OnayamiCardDocument _value;
  // ignore: unused_field
  final $Res Function(OnayamiCardDocument) _then;

  @override
  $Res call({
    Object? cardTitle = freezed,
    Object? content = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createAccountUid = freezed,
    Object? colorCode = freezed,
    Object? createdDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      cardTitle: cardTitle == freezed
          ? _value.cardTitle
          : cardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createAccountUid: createAccountUid == freezed
          ? _value.createAccountUid
          : createAccountUid // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: colorCode == freezed
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdDateTime: createdDateTime == freezed
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_OnayamiCardDocumentCopyWith<$Res>
    implements $OnayamiCardDocumentCopyWith<$Res> {
  factory _$$_OnayamiCardDocumentCopyWith(_$_OnayamiCardDocument value,
          $Res Function(_$_OnayamiCardDocument) then) =
      __$$_OnayamiCardDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'card_title')
          String cardTitle,
      @JsonKey(name: 'content')
          String content,
      @JsonKey(name: 'latitude')
          double latitude,
      @JsonKey(name: 'longitude')
          double longitude,
      @JsonKey(name: 'create_account_uid')
          String createAccountUid,
      @JsonKey(name: 'color_code')
          String colorCode,
      @JsonKey(name: 'created_date_time')
      @TimestampConverter()
          DateTime createdDateTime});
}

/// @nodoc
class __$$_OnayamiCardDocumentCopyWithImpl<$Res>
    extends _$OnayamiCardDocumentCopyWithImpl<$Res>
    implements _$$_OnayamiCardDocumentCopyWith<$Res> {
  __$$_OnayamiCardDocumentCopyWithImpl(_$_OnayamiCardDocument _value,
      $Res Function(_$_OnayamiCardDocument) _then)
      : super(_value, (v) => _then(v as _$_OnayamiCardDocument));

  @override
  _$_OnayamiCardDocument get _value => super._value as _$_OnayamiCardDocument;

  @override
  $Res call({
    Object? cardTitle = freezed,
    Object? content = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createAccountUid = freezed,
    Object? colorCode = freezed,
    Object? createdDateTime = freezed,
  }) {
    return _then(_$_OnayamiCardDocument(
      cardTitle: cardTitle == freezed
          ? _value.cardTitle
          : cardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createAccountUid: createAccountUid == freezed
          ? _value.createAccountUid
          : createAccountUid // ignore: cast_nullable_to_non_nullable
              as String,
      colorCode: colorCode == freezed
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdDateTime: createdDateTime == freezed
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnayamiCardDocument implements _OnayamiCardDocument {
  const _$_OnayamiCardDocument(
      {@JsonKey(name: 'card_title')
          required this.cardTitle,
      @JsonKey(name: 'content')
          required this.content,
      @JsonKey(name: 'latitude')
          required this.latitude,
      @JsonKey(name: 'longitude')
          required this.longitude,
      @JsonKey(name: 'create_account_uid')
          required this.createAccountUid,
      @JsonKey(name: 'color_code')
          required this.colorCode,
      @JsonKey(name: 'created_date_time')
      @TimestampConverter()
          required this.createdDateTime});

  factory _$_OnayamiCardDocument.fromJson(Map<String, dynamic> json) =>
      _$$_OnayamiCardDocumentFromJson(json);

  /// カード名
  @override
  @JsonKey(name: 'card_title')
  final String cardTitle;

  /// 詳細
  @override
  @JsonKey(name: 'content')
  final String content;

  /// 緯度
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  /// 経度
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  /// 作成者アカウントuid
  @override
  @JsonKey(name: 'create_account_uid')
  final String createAccountUid;

  /// カードの色
  @override
  @JsonKey(name: 'color_code')
  final String colorCode;

  /// カード作成日時
  @override
  @JsonKey(name: 'created_date_time')
  @TimestampConverter()
  final DateTime createdDateTime;

  @override
  String toString() {
    return 'OnayamiCardDocument(cardTitle: $cardTitle, content: $content, latitude: $latitude, longitude: $longitude, createAccountUid: $createAccountUid, colorCode: $colorCode, createdDateTime: $createdDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnayamiCardDocument &&
            const DeepCollectionEquality().equals(other.cardTitle, cardTitle) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.createAccountUid, createAccountUid) &&
            const DeepCollectionEquality().equals(other.colorCode, colorCode) &&
            const DeepCollectionEquality()
                .equals(other.createdDateTime, createdDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardTitle),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(createAccountUid),
      const DeepCollectionEquality().hash(colorCode),
      const DeepCollectionEquality().hash(createdDateTime));

  @JsonKey(ignore: true)
  @override
  _$$_OnayamiCardDocumentCopyWith<_$_OnayamiCardDocument> get copyWith =>
      __$$_OnayamiCardDocumentCopyWithImpl<_$_OnayamiCardDocument>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnayamiCardDocumentToJson(
      this,
    );
  }
}

abstract class _OnayamiCardDocument implements OnayamiCardDocument {
  const factory _OnayamiCardDocument(
      {@JsonKey(name: 'card_title')
          required final String cardTitle,
      @JsonKey(name: 'content')
          required final String content,
      @JsonKey(name: 'latitude')
          required final double latitude,
      @JsonKey(name: 'longitude')
          required final double longitude,
      @JsonKey(name: 'create_account_uid')
          required final String createAccountUid,
      @JsonKey(name: 'color_code')
          required final String colorCode,
      @JsonKey(name: 'created_date_time')
      @TimestampConverter()
          required final DateTime createdDateTime}) = _$_OnayamiCardDocument;

  factory _OnayamiCardDocument.fromJson(Map<String, dynamic> json) =
      _$_OnayamiCardDocument.fromJson;

  @override

  /// カード名
  @JsonKey(name: 'card_title')
  String get cardTitle;
  @override

  /// 詳細
  @JsonKey(name: 'content')
  String get content;
  @override

  /// 緯度
  @JsonKey(name: 'latitude')
  double get latitude;
  @override

  /// 経度
  @JsonKey(name: 'longitude')
  double get longitude;
  @override

  /// 作成者アカウントuid
  @JsonKey(name: 'create_account_uid')
  String get createAccountUid;
  @override

  /// カードの色
  @JsonKey(name: 'color_code')
  String get colorCode;
  @override

  /// カード作成日時
  @JsonKey(name: 'created_date_time')
  @TimestampConverter()
  DateTime get createdDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_OnayamiCardDocumentCopyWith<_$_OnayamiCardDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
