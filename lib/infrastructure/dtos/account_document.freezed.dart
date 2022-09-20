// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDocument _$AccountDocumentFromJson(Map<String, dynamic> json) {
  return _AccountDocument.fromJson(json);
}

/// @nodoc
mixin _$AccountDocument {
  /// アカウントID
  @JsonKey(name: 'account_id')
  String get accountId => throw _privateConstructorUsedError;

  /// アカウント名
  @JsonKey(name: 'account_name')
  String get accountName => throw _privateConstructorUsedError;

  /// アカウントに使用する画像のURL
  @JsonKey(name: 'account_image_url')
  String get accountImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDocumentCopyWith<AccountDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDocumentCopyWith<$Res> {
  factory $AccountDocumentCopyWith(
          AccountDocument value, $Res Function(AccountDocument) then) =
      _$AccountDocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'account_id') String accountId,
      @JsonKey(name: 'account_name') String accountName,
      @JsonKey(name: 'account_image_url') String accountImageUrl});
}

/// @nodoc
class _$AccountDocumentCopyWithImpl<$Res>
    implements $AccountDocumentCopyWith<$Res> {
  _$AccountDocumentCopyWithImpl(this._value, this._then);

  final AccountDocument _value;
  // ignore: unused_field
  final $Res Function(AccountDocument) _then;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? accountName = freezed,
    Object? accountImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountImageUrl: accountImageUrl == freezed
          ? _value.accountImageUrl
          : accountImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountDocumentCopyWith<$Res>
    implements $AccountDocumentCopyWith<$Res> {
  factory _$$_AccountDocumentCopyWith(
          _$_AccountDocument value, $Res Function(_$_AccountDocument) then) =
      __$$_AccountDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'account_id') String accountId,
      @JsonKey(name: 'account_name') String accountName,
      @JsonKey(name: 'account_image_url') String accountImageUrl});
}

/// @nodoc
class __$$_AccountDocumentCopyWithImpl<$Res>
    extends _$AccountDocumentCopyWithImpl<$Res>
    implements _$$_AccountDocumentCopyWith<$Res> {
  __$$_AccountDocumentCopyWithImpl(
      _$_AccountDocument _value, $Res Function(_$_AccountDocument) _then)
      : super(_value, (v) => _then(v as _$_AccountDocument));

  @override
  _$_AccountDocument get _value => super._value as _$_AccountDocument;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? accountName = freezed,
    Object? accountImageUrl = freezed,
  }) {
    return _then(_$_AccountDocument(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountImageUrl: accountImageUrl == freezed
          ? _value.accountImageUrl
          : accountImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountDocument implements _AccountDocument {
  const _$_AccountDocument(
      {@JsonKey(name: 'account_id') required this.accountId,
      @JsonKey(name: 'account_name') required this.accountName,
      @JsonKey(name: 'account_image_url') required this.accountImageUrl});

  factory _$_AccountDocument.fromJson(Map<String, dynamic> json) =>
      _$$_AccountDocumentFromJson(json);

  /// アカウントID
  @override
  @JsonKey(name: 'account_id')
  final String accountId;

  /// アカウント名
  @override
  @JsonKey(name: 'account_name')
  final String accountName;

  /// アカウントに使用する画像のURL
  @override
  @JsonKey(name: 'account_image_url')
  final String accountImageUrl;

  @override
  String toString() {
    return 'AccountDocument(accountId: $accountId, accountName: $accountName, accountImageUrl: $accountImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDocument &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.accountImageUrl, accountImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountImageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AccountDocumentCopyWith<_$_AccountDocument> get copyWith =>
      __$$_AccountDocumentCopyWithImpl<_$_AccountDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountDocumentToJson(
      this,
    );
  }
}

abstract class _AccountDocument implements AccountDocument {
  const factory _AccountDocument(
      {@JsonKey(name: 'account_id')
          required final String accountId,
      @JsonKey(name: 'account_name')
          required final String accountName,
      @JsonKey(name: 'account_image_url')
          required final String accountImageUrl}) = _$_AccountDocument;

  factory _AccountDocument.fromJson(Map<String, dynamic> json) =
      _$_AccountDocument.fromJson;

  @override

  /// アカウントID
  @JsonKey(name: 'account_id')
  String get accountId;
  @override

  /// アカウント名
  @JsonKey(name: 'account_name')
  String get accountName;
  @override

  /// アカウントに使用する画像のURL
  @JsonKey(name: 'account_image_url')
  String get accountImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDocumentCopyWith<_$_AccountDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
