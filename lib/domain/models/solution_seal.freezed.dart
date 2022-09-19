// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'solution_seal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SolutionSeal _$SolutionSealFromJson(Map<String, dynamic> json) {
  return _SolutionSeal.fromJson(json);
}

/// @nodoc
mixin _$SolutionSeal {
  /// シールデータの種類
  @JsonKey(name: 'seal_type')
  String get sealType => throw _privateConstructorUsedError;

  /// テキストデータ
  /// ※ seal_typeが"テキスト"のみの場合のみ使用されるフィールド
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// お絵描きデータの画像URL
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  /// お気に入りに認定されたシールかどうか(true：お気に入り、false：通常)
  @JsonKey(name: 'is_favorite')
  String get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolutionSealCopyWith<SolutionSeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolutionSealCopyWith<$Res> {
  factory $SolutionSealCopyWith(
          SolutionSeal value, $Res Function(SolutionSeal) then) =
      _$SolutionSealCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'seal_type') String sealType,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'is_favorite') String isFavorite});
}

/// @nodoc
class _$SolutionSealCopyWithImpl<$Res> implements $SolutionSealCopyWith<$Res> {
  _$SolutionSealCopyWithImpl(this._value, this._then);

  final SolutionSeal _value;
  // ignore: unused_field
  final $Res Function(SolutionSeal) _then;

  @override
  $Res call({
    Object? sealType = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      sealType: sealType == freezed
          ? _value.sealType
          : sealType // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SolutionSealCopyWith<$Res>
    implements $SolutionSealCopyWith<$Res> {
  factory _$$_SolutionSealCopyWith(
          _$_SolutionSeal value, $Res Function(_$_SolutionSeal) then) =
      __$$_SolutionSealCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'seal_type') String sealType,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'is_favorite') String isFavorite});
}

/// @nodoc
class __$$_SolutionSealCopyWithImpl<$Res>
    extends _$SolutionSealCopyWithImpl<$Res>
    implements _$$_SolutionSealCopyWith<$Res> {
  __$$_SolutionSealCopyWithImpl(
      _$_SolutionSeal _value, $Res Function(_$_SolutionSeal) _then)
      : super(_value, (v) => _then(v as _$_SolutionSeal));

  @override
  _$_SolutionSeal get _value => super._value as _$_SolutionSeal;

  @override
  $Res call({
    Object? sealType = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_SolutionSeal(
      sealType: sealType == freezed
          ? _value.sealType
          : sealType // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SolutionSeal implements _SolutionSeal {
  const _$_SolutionSeal(
      {@JsonKey(name: 'seal_type') required this.sealType,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'is_favorite') required this.isFavorite});

  factory _$_SolutionSeal.fromJson(Map<String, dynamic> json) =>
      _$$_SolutionSealFromJson(json);

  /// シールデータの種類
  @override
  @JsonKey(name: 'seal_type')
  final String sealType;

  /// テキストデータ
  /// ※ seal_typeが"テキスト"のみの場合のみ使用されるフィールド
  @override
  @JsonKey(name: 'text')
  final String text;

  /// お絵描きデータの画像URL
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// お気に入りに認定されたシールかどうか(true：お気に入り、false：通常)
  @override
  @JsonKey(name: 'is_favorite')
  final String isFavorite;

  @override
  String toString() {
    return 'SolutionSeal(sealType: $sealType, text: $text, imageUrl: $imageUrl, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SolutionSeal &&
            const DeepCollectionEquality().equals(other.sealType, sealType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sealType),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_SolutionSealCopyWith<_$_SolutionSeal> get copyWith =>
      __$$_SolutionSealCopyWithImpl<_$_SolutionSeal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SolutionSealToJson(
      this,
    );
  }
}

abstract class _SolutionSeal implements SolutionSeal {
  const factory _SolutionSeal(
          {@JsonKey(name: 'seal_type') required final String sealType,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'is_favorite') required final String isFavorite}) =
      _$_SolutionSeal;

  factory _SolutionSeal.fromJson(Map<String, dynamic> json) =
      _$_SolutionSeal.fromJson;

  @override

  /// シールデータの種類
  @JsonKey(name: 'seal_type')
  String get sealType;
  @override

  /// テキストデータ
  /// ※ seal_typeが"テキスト"のみの場合のみ使用されるフィールド
  @JsonKey(name: 'text')
  String get text;
  @override

  /// お絵描きデータの画像URL
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override

  /// お気に入りに認定されたシールかどうか(true：お気に入り、false：通常)
  @JsonKey(name: 'is_favorite')
  String get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_SolutionSealCopyWith<_$_SolutionSeal> get copyWith =>
      throw _privateConstructorUsedError;
}
