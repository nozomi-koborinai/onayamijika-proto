// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onayami_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnayamiCard _$OnayamiCardFromJson(Map<String, dynamic> json) {
  return _OnayamiCard.fromJson(json);
}

/// @nodoc
mixin _$OnayamiCard {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnayamiCardCopyWith<OnayamiCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnayamiCardCopyWith<$Res> {
  factory $OnayamiCardCopyWith(
          OnayamiCard value, $Res Function(OnayamiCard) then) =
      _$OnayamiCardCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'card_title') String cardTitle,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$OnayamiCardCopyWithImpl<$Res> implements $OnayamiCardCopyWith<$Res> {
  _$OnayamiCardCopyWithImpl(this._value, this._then);

  final OnayamiCard _value;
  // ignore: unused_field
  final $Res Function(OnayamiCard) _then;

  @override
  $Res call({
    Object? cardTitle = freezed,
    Object? content = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_OnayamiCardCopyWith<$Res>
    implements $OnayamiCardCopyWith<$Res> {
  factory _$$_OnayamiCardCopyWith(
          _$_OnayamiCard value, $Res Function(_$_OnayamiCard) then) =
      __$$_OnayamiCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'card_title') String cardTitle,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$$_OnayamiCardCopyWithImpl<$Res> extends _$OnayamiCardCopyWithImpl<$Res>
    implements _$$_OnayamiCardCopyWith<$Res> {
  __$$_OnayamiCardCopyWithImpl(
      _$_OnayamiCard _value, $Res Function(_$_OnayamiCard) _then)
      : super(_value, (v) => _then(v as _$_OnayamiCard));

  @override
  _$_OnayamiCard get _value => super._value as _$_OnayamiCard;

  @override
  $Res call({
    Object? cardTitle = freezed,
    Object? content = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_OnayamiCard(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnayamiCard implements _OnayamiCard {
  const _$_OnayamiCard(
      {@JsonKey(name: 'card_title') required this.cardTitle,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude});

  factory _$_OnayamiCard.fromJson(Map<String, dynamic> json) =>
      _$$_OnayamiCardFromJson(json);

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

  @override
  String toString() {
    return 'OnayamiCard(cardTitle: $cardTitle, content: $content, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnayamiCard &&
            const DeepCollectionEquality().equals(other.cardTitle, cardTitle) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardTitle),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_OnayamiCardCopyWith<_$_OnayamiCard> get copyWith =>
      __$$_OnayamiCardCopyWithImpl<_$_OnayamiCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnayamiCardToJson(
      this,
    );
  }
}

abstract class _OnayamiCard implements OnayamiCard {
  const factory _OnayamiCard(
          {@JsonKey(name: 'card_title') required final String cardTitle,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude}) =
      _$_OnayamiCard;

  factory _OnayamiCard.fromJson(Map<String, dynamic> json) =
      _$_OnayamiCard.fromJson;

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
  @JsonKey(ignore: true)
  _$$_OnayamiCardCopyWith<_$_OnayamiCard> get copyWith =>
      throw _privateConstructorUsedError;
}
