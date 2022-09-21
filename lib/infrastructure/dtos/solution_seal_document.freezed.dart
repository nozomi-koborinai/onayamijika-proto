// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'solution_seal_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SolutionSealDocument _$SolutionSealDocumentFromJson(Map<String, dynamic> json) {
  return _SolutionSealDocument.fromJson(json);
}

/// @nodoc
mixin _$SolutionSealDocument {
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
  bool get isFavorite => throw _privateConstructorUsedError;

  /// シールを貼る対象のお悩みカードのドキュメントID
  @JsonKey(name: 'card_id')
  String get cardId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolutionSealDocumentCopyWith<SolutionSealDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolutionSealDocumentCopyWith<$Res> {
  factory $SolutionSealDocumentCopyWith(SolutionSealDocument value,
          $Res Function(SolutionSealDocument) then) =
      _$SolutionSealDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'seal_type') String sealType,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'is_favorite') bool isFavorite,
      @JsonKey(name: 'card_id') String cardId});
}

/// @nodoc
class _$SolutionSealDocumentCopyWithImpl<$Res>
    implements $SolutionSealDocumentCopyWith<$Res> {
  _$SolutionSealDocumentCopyWithImpl(this._value, this._then);

  final SolutionSealDocument _value;
  // ignore: unused_field
  final $Res Function(SolutionSealDocument) _then;

  @override
  $Res call({
    Object? sealType = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
    Object? cardId = freezed,
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
              as bool,
      cardId: cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SolutionSealDocumentCopyWith<$Res>
    implements $SolutionSealDocumentCopyWith<$Res> {
  factory _$$_SolutionSealDocumentCopyWith(_$_SolutionSealDocument value,
          $Res Function(_$_SolutionSealDocument) then) =
      __$$_SolutionSealDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'seal_type') String sealType,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'is_favorite') bool isFavorite,
      @JsonKey(name: 'card_id') String cardId});
}

/// @nodoc
class __$$_SolutionSealDocumentCopyWithImpl<$Res>
    extends _$SolutionSealDocumentCopyWithImpl<$Res>
    implements _$$_SolutionSealDocumentCopyWith<$Res> {
  __$$_SolutionSealDocumentCopyWithImpl(_$_SolutionSealDocument _value,
      $Res Function(_$_SolutionSealDocument) _then)
      : super(_value, (v) => _then(v as _$_SolutionSealDocument));

  @override
  _$_SolutionSealDocument get _value => super._value as _$_SolutionSealDocument;

  @override
  $Res call({
    Object? sealType = freezed,
    Object? text = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
    Object? cardId = freezed,
  }) {
    return _then(_$_SolutionSealDocument(
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
              as bool,
      cardId: cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SolutionSealDocument implements _SolutionSealDocument {
  const _$_SolutionSealDocument(
      {@JsonKey(name: 'seal_type') required this.sealType,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'is_favorite') required this.isFavorite,
      @JsonKey(name: 'card_id') required this.cardId});

  factory _$_SolutionSealDocument.fromJson(Map<String, dynamic> json) =>
      _$$_SolutionSealDocumentFromJson(json);

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
  final bool isFavorite;

  /// シールを貼る対象のお悩みカードのドキュメントID
  @override
  @JsonKey(name: 'card_id')
  final String cardId;

  @override
  String toString() {
    return 'SolutionSealDocument(sealType: $sealType, text: $text, imageUrl: $imageUrl, isFavorite: $isFavorite, cardId: $cardId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SolutionSealDocument &&
            const DeepCollectionEquality().equals(other.sealType, sealType) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.cardId, cardId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sealType),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(cardId));

  @JsonKey(ignore: true)
  @override
  _$$_SolutionSealDocumentCopyWith<_$_SolutionSealDocument> get copyWith =>
      __$$_SolutionSealDocumentCopyWithImpl<_$_SolutionSealDocument>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SolutionSealDocumentToJson(
      this,
    );
  }
}

abstract class _SolutionSealDocument implements SolutionSealDocument {
  const factory _SolutionSealDocument(
          {@JsonKey(name: 'seal_type') required final String sealType,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'is_favorite') required final bool isFavorite,
          @JsonKey(name: 'card_id') required final String cardId}) =
      _$_SolutionSealDocument;

  factory _SolutionSealDocument.fromJson(Map<String, dynamic> json) =
      _$_SolutionSealDocument.fromJson;

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
  bool get isFavorite;
  @override

  /// シールを貼る対象のお悩みカードのドキュメントID
  @JsonKey(name: 'card_id')
  String get cardId;
  @override
  @JsonKey(ignore: true)
  _$$_SolutionSealDocumentCopyWith<_$_SolutionSealDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
