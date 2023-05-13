// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_scan_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardScanResponse _$CardScanResponseFromJson(Map<String, dynamic> json) {
  return _CardScanResponse.fromJson(json);
}

/// @nodoc
mixin _$CardScanResponse {
  @JsonKey(name: 'card_hash')
  String? get cardHash => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get expiration => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_card')
  String? get nameOnCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardScanResponseCopyWith<CardScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardScanResponseCopyWith<$Res> {
  factory $CardScanResponseCopyWith(
          CardScanResponse value, $Res Function(CardScanResponse) then) =
      _$CardScanResponseCopyWithImpl<$Res, CardScanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'card_hash') String? cardHash,
      String? cvv,
      String? expiration,
      @JsonKey(name: 'name_on_card') String? nameOnCard});
}

/// @nodoc
class _$CardScanResponseCopyWithImpl<$Res, $Val extends CardScanResponse>
    implements $CardScanResponseCopyWith<$Res> {
  _$CardScanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardHash = freezed,
    Object? cvv = freezed,
    Object? expiration = freezed,
    Object? nameOnCard = freezed,
  }) {
    return _then(_value.copyWith(
      cardHash: freezed == cardHash
          ? _value.cardHash
          : cardHash // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOnCard: freezed == nameOnCard
          ? _value.nameOnCard
          : nameOnCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardScanResponseCopyWith<$Res>
    implements $CardScanResponseCopyWith<$Res> {
  factory _$$_CardScanResponseCopyWith(
          _$_CardScanResponse value, $Res Function(_$_CardScanResponse) then) =
      __$$_CardScanResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'card_hash') String? cardHash,
      String? cvv,
      String? expiration,
      @JsonKey(name: 'name_on_card') String? nameOnCard});
}

/// @nodoc
class __$$_CardScanResponseCopyWithImpl<$Res>
    extends _$CardScanResponseCopyWithImpl<$Res, _$_CardScanResponse>
    implements _$$_CardScanResponseCopyWith<$Res> {
  __$$_CardScanResponseCopyWithImpl(
      _$_CardScanResponse _value, $Res Function(_$_CardScanResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardHash = freezed,
    Object? cvv = freezed,
    Object? expiration = freezed,
    Object? nameOnCard = freezed,
  }) {
    return _then(_$_CardScanResponse(
      cardHash: freezed == cardHash
          ? _value.cardHash
          : cardHash // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOnCard: freezed == nameOnCard
          ? _value.nameOnCard
          : nameOnCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardScanResponse implements _CardScanResponse {
  const _$_CardScanResponse(
      {@JsonKey(name: 'card_hash') this.cardHash,
      this.cvv,
      this.expiration,
      @JsonKey(name: 'name_on_card') this.nameOnCard});

  factory _$_CardScanResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CardScanResponseFromJson(json);

  @override
  @JsonKey(name: 'card_hash')
  final String? cardHash;
  @override
  final String? cvv;
  @override
  final String? expiration;
  @override
  @JsonKey(name: 'name_on_card')
  final String? nameOnCard;

  @override
  String toString() {
    return 'CardScanResponse(cardHash: $cardHash, cvv: $cvv, expiration: $expiration, nameOnCard: $nameOnCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardScanResponse &&
            (identical(other.cardHash, cardHash) ||
                other.cardHash == cardHash) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.nameOnCard, nameOnCard) ||
                other.nameOnCard == nameOnCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cardHash, cvv, expiration, nameOnCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardScanResponseCopyWith<_$_CardScanResponse> get copyWith =>
      __$$_CardScanResponseCopyWithImpl<_$_CardScanResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardScanResponseToJson(
      this,
    );
  }
}

abstract class _CardScanResponse implements CardScanResponse {
  const factory _CardScanResponse(
          {@JsonKey(name: 'card_hash') final String? cardHash,
          final String? cvv,
          final String? expiration,
          @JsonKey(name: 'name_on_card') final String? nameOnCard}) =
      _$_CardScanResponse;

  factory _CardScanResponse.fromJson(Map<String, dynamic> json) =
      _$_CardScanResponse.fromJson;

  @override
  @JsonKey(name: 'card_hash')
  String? get cardHash;
  @override
  String? get cvv;
  @override
  String? get expiration;
  @override
  @JsonKey(name: 'name_on_card')
  String? get nameOnCard;
  @override
  @JsonKey(ignore: true)
  _$$_CardScanResponseCopyWith<_$_CardScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
